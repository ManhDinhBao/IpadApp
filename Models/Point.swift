//
//  Point.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/26/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Point:Decodable  {
    
    //MARK: Properties
    var ID: String
    var Name: String
    var Descr: String
    var PType: PointType
    var Alias: String
    var DeviceID: String
    var PublishAddress: String
    var SubcribeAddress: String
    var Character: PointCharacter
    var CurrentValue: String
                    
  
    func setCurrentValue(value:String){
        self.CurrentValue = value
    }
    
    //MARK: Initialization
    init?(id:String, name:String, type:PointType, deviceId:String, pointCharacter:PointCharacter, descr: String, alias: String, publishAddress: String, subcribeAddress: String, currentValue: String) {
        
        self.ID=id
        self.Name=name
        self.PType=type
        self.DeviceID=deviceId
        self.Character = pointCharacter
        self.Descr = descr
        self.Alias = alias
        self.PublishAddress = publishAddress
        self.SubcribeAddress = subcribeAddress
        self.CurrentValue = currentValue
    }
    
}
