//
//  RoomPicture.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class RoomPicture:Decodable  {
    //MARK: Properties
    var ID: String
    var IconPicture: String
    var WallPicture: String
    
    //MARK: Initialization
    init?(id:String, iconOn:String,iconOff:String) {
        self.ID=id
        self.IconPicture=iconOn
        self.WallPicture=iconOff
    }
    
}
