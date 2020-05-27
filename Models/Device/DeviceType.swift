//
//  DeviceType.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/26/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class DeviceType:Decodable  {
    //MARK: Properties
    var ID: String
    var Name: String
    
    //MARK: Initialization
    init?(id:String, name:String) {
        self.ID=id
        self.Name=name
    }
    
}
