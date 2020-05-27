//
//  Room.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Room:Decodable  {
//MARK: Properties
var ID: String
var OrderNumber: String
var Name: String
var RType: RoomType
var ApartmentId: String
var Picture: RoomPicture
var Devices: [Device]

//MARK: Initialization
    init?(id:String, orderNumber:String, name:String, rType:RoomType, picture:RoomPicture, apartmentId:String, devices: [Device]) {
    
    self.ID=id
    self.OrderNumber = orderNumber
    self.Name=name
    self.RType = rType
    self.Picture = picture
    self.ApartmentId = apartmentId
    self.Devices = devices
}
    
}
