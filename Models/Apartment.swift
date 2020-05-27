//
//  Apartment.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Apartment:Decodable  {
    
    //MARK: Properties
    var ID: String
    var Name: String
    var FloorId: String
    var Description: String
    var Rooms: [Room]
    var Scenes: [Device]
    
    //MARK: Initialization
    init?(id:String, name:String, floorId:String, description:String, rooms:[Room], scenes: [Device]) {
        self.ID=id
        self.Name=name
        self.FloorId=floorId
        self.Description=description
        self.Rooms = rooms
        self.Scenes = scenes
    }
    
}
