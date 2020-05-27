//
//  DeviceIcon.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/26/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class DeviceIcon:Decodable  {
    //MARK: Properties
    var ID: String
    var IconOn: String
    var IconOff: String
    
    //MARK: Initialization
    init?(id:String, iconOn:String,iconOff:String) {
        self.ID=id
        self.IconOn=iconOn
        self.IconOff=iconOff
    }
    
}
