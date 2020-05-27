//
//  SocketDataManager.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/13/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
class SocketDataManager: NSObject, StreamDelegate {
    
    var readStream: Unmanaged<CFReadStream>?
    var writeStream: Unmanaged<CFWriteStream>?
    var inputStream: InputStream?
    var outputStream: OutputStream?
    var messages = [AnyHashable]()
    var isConnect = false
    weak var uiPresenter :PresenterProtocol!
    
    init(with presenter:PresenterProtocol){
        
        self.uiPresenter = presenter
    }
    
    func connectWith(socket: DataSocket) {

        CFStreamCreatePairWithSocketToHost(kCFAllocatorDefault, (socket.ipAddress! as CFString), UInt32(socket.port), &readStream, &writeStream)
        messages = [AnyHashable]()
        open()
    }
    
    func disconnect(){
        
        close()
    }
    
    func open() {
        print("Opening streams.")
        outputStream = writeStream?.takeRetainedValue()
        inputStream = readStream?.takeRetainedValue()
        outputStream?.delegate = self
        inputStream?.delegate = self
        outputStream?.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
        inputStream?.schedule(in: RunLoop.current, forMode: RunLoop.Mode.default)
        outputStream?.open()
        inputStream?.open()
    }
    
    func close() {
        print("Closing streams.")
        uiPresenter?.resetUIWithConnection(status: false)
        inputStream?.close()
        outputStream?.close()
        inputStream?.remove(from: RunLoop.current, forMode: RunLoop.Mode.default)
        outputStream?.remove(from: RunLoop.current, forMode: RunLoop.Mode.default)
        inputStream?.delegate = nil
        outputStream?.delegate = nil
        inputStream = nil
        outputStream = nil
        isConnect = false
    }
    
    func stream(_ aStream: Stream, handle eventCode: Stream.Event) {
        print("stream event \(eventCode)")
        switch eventCode {
        case .openCompleted:
            uiPresenter?.resetUIWithConnection(status: true)
            print("Server connected")
            isConnect = true
        case .hasBytesAvailable:
            if aStream == inputStream {
                var dataBuffer = Array<UInt8>(repeating: 0, count: 1024)
                var len: Int
                while (inputStream?.hasBytesAvailable)! {
                    len = (inputStream?.read(&dataBuffer, maxLength: 1024))!
                    if len > 0 {
                        let output = String(bytes: dataBuffer, encoding: .ascii)
                        print("Message from server: \(output ?? "")")
                        if nil != output{
                            let data = output!.components(separatedBy: "<>")
                            
                            for i in 0..<data.count {
                                let message = data[i]
                                //messageReceived(message: message)
                                
                                let messageComponent = message.components(separatedBy: ";")
                                switch messageComponent[0] {
                                case Global.MESSAGE_CODE_LOGIN_RSP:
                                    print("Login respone: \(message )")
                                    send(message: Global.MESSAGE_CODE_CURRENT_POINT_STATUS+";0020;"+Global.sApartment!.ID)
                                    print("Send request current point")
                                    break
                                case Global.MESSAGE_CODE_SEND_POINT:
                                    if(messageComponent.count>3){
                                        let topic = messageComponent[2]
                                        let value = messageComponent[3]
                                        Global.UpdatePointValueByTopic(topic: topic, value: value)
                                    }
                                    break
                                default:
                                    print("Other message: \(message)")
                                }
                            }
                        }
                    }
                }
            }
        case .hasSpaceAvailable:
            print("Stream has space available now")
        case .errorOccurred:
            print("\(aStream.streamError?.localizedDescription ?? "")")
            uiPresenter?.disConnectServer(message: aStream.streamError?.localizedDescription ?? "")
        case .endEncountered:
            aStream.close()
            aStream.remove(from: RunLoop.current, forMode: RunLoop.Mode.default)
            print("close stream")
            uiPresenter?.resetUIWithConnection(status: false)
        default:
            print("Unknown event")
        }
    }
    
    func messageReceived(message: String){
        uiPresenter?.update(message: "server said: \(message)")
        print(message)
    }
    
    func send(message: String){
        
        let response = "msg:\(message)"
        let buff = [UInt8](message.utf8)
        if let _ = response.data(using: .ascii) {
            outputStream?.write(buff, maxLength: buff.count)
        }

    }

}
