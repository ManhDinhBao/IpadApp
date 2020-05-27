//
//  Global.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Global {
    public static var sApartment:Apartment? = nil
    public static var sUser:User?=nil
    
    public static let MESSAGE_CODE_LOGIN:String         = "1201"
    public static let MESSAGE_CODE_LOGIN_RSP:String     = "1202"
    public static let MESSAGE_CODE_SEND_POINT:String    = "1203"
    public static let MESSAGE_CODE_POINT_STATUS:String    = "1204";
    public static let MESSAGE_CODE_CURRENT_POINT_STATUS:String    = "1205";
    
    public static let POINT_TYPE_BOOL:String            = "PTY0000001"
    public static let POINT_TYPE_NUMBER:String          = "PTY0000002"
    public static let POINT_TYPE_TEXT:String            = "PTY0000003"
    
    public static let DEVICE_TYPE_LIGHT:String          = "DTY0000001"
    public static let DEVICE_TYPE_AC:String             = "DTY0000002"
    public static let DEVICE_TYPE_EW:String             = "DTY0000003"
    public static let DEVICE_TYPE_BUTTON:String         = "DTY0000004"
    public static let DEVICE_TYPE_METER:String          = "DTY0000005"
    public static let DEVICE_TYPE_TV:String             = "DTY0000006"
    public static let DEVICE_TYPE_DOOR:String           = "DTY0000007"
    public static let DEVICE_TYPE_FAN:String            = "DTY0000008"
    public static let DEVICE_TYPE_WASHING_MACHINE:String = "DTY0000009"
    public static let DEVICE_TYPE_CURTAIN:String        = "DTY0000010"
    public static let DEVICE_TYPE_BUTTON_MODE:String    = "DTY0000011"
    public static let DEVICE_TYPE_LIGHT_NODIM:String    = "DTY0000012"
    public static let DEVICE_TYPE_HOOD:String           = "DTY0000013"
    public static let DEVICE_TYPE_SCENE:String          = "DTY0000014"
    
    public static let POINT_ALIAS_TEMPERATURE:String    = "SetTemp"
    public static let POINT_ALIAS_POWER:String          = "Power"
    public static let POINT_ALIAS_MODE:String           = "Mode"
    public static let POINT_ALIAS_DIM:String            = "Dim"
    public static let POINT_ALIAS_CURTAIN:String        = "CurtainCmd"
    public static let POINT_ALIAS_FAN_SPEED:String      = "FanSpeed"
    

    
    public static func GenMessageData() -> [Message]{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        
        guard let mess01 = Message(id: "MES0000001", title: "Hướng dẫn khai báo y tế trên ứng dụng NCOV", detail: "Bằng cách khai báo y tế trên ứng dụng NCOVI, mỗi chúng ta đã đóng góp phần công sức vào công cuộc phòng", sendDate: formatter.date(from: "2020/04/08 22:31")!, isEmergency: false, attach: ["m1_a","m1_b","m1_c","m1_d"]) else{
            fatalError("Unable to instantiate message")
        }
        
        guard let mess02 = Message(id: "MES0000002", title: "Triển khai thực hiện chủ trương khai báo y tế toàn dân", detail: "Thực hiện công văn số 232/STTTT-TTBCXB ngày 12/03/2020", sendDate: formatter.date(from: "2020/04/10 22:31")!, isEmergency: false, attach: ["m2_a","m2_b"]) else{
            fatalError("Unable to instantiate message")
        }
        
        guard let mess03 = Message(id: "MES0000003", title: "Triển khai ứng dụng khai báo y tế NCOVI", detail: "Thực hiện chỉ đạo của Thủ tướng Chính phủ về việc tăng cường phòng, chống dịch bệnh COVID-19", sendDate: formatter.date(from: "2020/04/12 22:31")!, isEmergency: false, attach: ["m3_a","m3_b","m3_c"]) else{
            fatalError("Unable to instantiate message")
        }
        
        guard let mess04 = Message(id: "MES0000004", title: "Tiếp tục cho học sinh nghỉ học", detail: "Do diễn biến phức tạp của bệnh dịch. Trường THCS Nguyễn Lương Bằng thông báo đến các bậc PH cùng các em học sinh nhà trường", sendDate: formatter.date(from: "2020/04/23 22:31")!, isEmergency: false, attach: ["m4_a"]) else{
            fatalError("Unable to instantiate message")
        }
        
        return [mess01,mess02,mess03,mess04]
        
    }
    
    public static func GenSettingData() -> [SettingItem]{
        
        guard let item1 = SettingItem(id: "item1", name: changeLaguage(key: "Language"), image: "globe", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item2 = SettingItem(id: "item2", name: changeLaguage(key: "Background"), image: "photo", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item3 = SettingItem(id: "item3", name: changeLaguage(key: "UserInfo"), image: "person.fill", detail: false) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item4 = SettingItem(id: "item4", name: changeLaguage(key: "SoftInfo"), image: "info.circle.fill", detail: false) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item5 = SettingItem(id: "item5", name: changeLaguage(key: "LogOut"), image: "lock.fill", detail: false) else{
            fatalError("Unable to instantiate setting item")
        }
        
        return [item1,item2,item3,item4,item5]
    }
    
    public static func GenLanguageSettingData() -> [SettingItem]{
        guard let item1 = SettingItem(id: "item1", name: changeLaguage(key: "English"), image: "english", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item2 = SettingItem(id: "item2", name: changeLaguage(key: "Vietnamese"), image: "vietnamese", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        return [item1,item2]
    }
    
    public static func GenBackGroundSettingData() -> [SettingItem]{
        guard let item1 = SettingItem(id: "item1", name: changeLaguage(key: "Background1"), image: "home_background_pic1", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item2 = SettingItem(id: "item2", name: changeLaguage(key: "Background2"), image: "home_background_pic2", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item3 = SettingItem(id: "item2", name: changeLaguage(key: "Background3"), image: "home_background_pic3", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        guard let item4 = SettingItem(id: "item2", name: changeLaguage(key: "Background4"), image: "home_background_pic4", detail: true) else{
            fatalError("Unable to instantiate setting item")
        }
        return [item1,item2,item3,item4]
    }
    
    public static func UpdatePointValueByTopic(topic:String, value:String){
        for room in sApartment!.Rooms {
            for device in room.Devices {
                for point in device.Points {
                    if point.SubcribeAddress == topic {
                        switch point.PType.ID {
                        case POINT_TYPE_BOOL:
                            if value == "0" {
                                point.setCurrentValue(value: value)
                                device.Power = false
                                print(room.Name + ": " + device.Name + "-> OFF")
                            }
                            else{
                                point.CurrentValue = "1"
                                device.Power = true
                                print(room.Name + ": " + device.Name + "-> ON")
                            }
                            if(!(device.DType.ID == Global.DEVICE_TYPE_AC) && !(device.DType.ID == Global.DEVICE_TYPE_LIGHT) && !(device.DType.ID == Global.DEVICE_TYPE_CURTAIN)){
                                device.setCurrentValue(value: value)
                            }
                            break
                        case POINT_TYPE_NUMBER:
                            if device.DType.ID == Global.DEVICE_TYPE_AC && point.Alias == Global.POINT_ALIAS_TEMPERATURE {
                                device.CurrentValue = value
                            }
                            else if device.DType.ID == Global.DEVICE_TYPE_LIGHT && point.Alias == Global.POINT_ALIAS_DIM {
                                if value == "0" {
                                    point.setCurrentValue(value: value)
                                    device.Power = false
                                    print(room.Name + ": " + device.Name + "-> OFF")
                                }
                                else{
                                    point.setCurrentValue(value: "100")
                                    device.Power = true
                                    print(room.Name + ": " + device.Name + "-> ON")
                                }
                                device.CurrentValue = value
                            }
                            else if device.DType.ID == Global.DEVICE_TYPE_CURTAIN && point.Alias == Global.POINT_ALIAS_CURTAIN{
                                device.CurrentValue = value
                            }
                            point.setCurrentValue(value: value)
                            break
                        case POINT_TYPE_TEXT:
                            point.setCurrentValue(value: value)
                            break
                        default:
                            device.CurrentValue = "0"
                            point.setCurrentValue(value: value)
                        }
    
                        //Update device and room in home view
                        NotificationCenter.default.post(name: NSNotification.Name("load"), object: nil)

                    }
                }
            }
        }
    }
    
    public static func SetBackground(backgroundView:UIImageView){
        let backgroundIndex = UserDefaults.standard.integer(forKey: "backgroundIndex")
        switch backgroundIndex {
        case 0:
            backgroundView.image = UIImage(named:"home_background_pic1")
            return
        case 1:
            backgroundView.image = UIImage(named:"home_background_pic2")
            return
        case 2:
            backgroundView.image = UIImage(named:"home_background_pic3")
            return
        case 3:
            backgroundView.image = UIImage(named:"home_background_pic4")
            return
        default:
            backgroundView.image = UIImage(named:"home_background_pic1")
        }
    }
        
    public static func changeLaguage(key:String)->String{
        let language = UserDefaults.standard.string(forKey: "languageCode")
        
        LocalizationUtils.sharedInstance.setLanguage(languageCode: language ?? "en")
        
        return LocalizationUtils.sharedInstance.localizedStringForKey(key: key, comment: "")
    }
}



