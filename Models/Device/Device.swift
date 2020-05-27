//
//  Device.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/26/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Device:Decodable  {
    //MARK: Properties
    var ID: String
    var OrderNumber: String
    var Name: String
    var Descr: String
    var DType: DeviceType
    var Icon: DeviceIcon
    var RoomId: String
    var Points: [Point]
    var Power: Bool
    var CurrentValue: String
    
    func setCurrentValue(value:String){
        self.CurrentValue = value
    }
    
    
    //MARK: Initialization
    init?(id:String, orderNumber:String, roomId:String, name:String, dType:DeviceType, descr:String, icon:DeviceIcon, points: [Point]) {
        self.ID=id
        self.OrderNumber = orderNumber
        self.RoomId = roomId
        self.Name=name
        self.DType = dType
        self.Descr = descr
        self.Icon = icon
        self.Power = false
        self.Points = points
        
        CurrentValue = "0"
    }
    
}
