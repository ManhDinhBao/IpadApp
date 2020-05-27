//
//  TCPMessage.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/26/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class TCPMessage{
    
    //MARK: Properties
    var Code: String
    var Length: Int
    var Data: [String]
    
    //MARK: Initialization
    init?(code:String, data:[String]) {
        self.Code = code
        self.Data = data
        
        var length:Int
        // Code length + data semi-colon + mess length semi-colon + messlength
        length = code.count + (data.count - 1) + 2 + 4
        for i in 0..<data.count {
            length += data[i].count
        }
        self.Length = length
    }
    
    func toString() -> String {
        
        var message:String = Code + ";" + String(format: "%04d", Length)
        
        for i in 0..<Data.count {
            message += ";" + Data[i]
        }
        
        return message
    }
    
}
