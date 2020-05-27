//
//  SettingItem.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/20/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class SettingItem{
    
    //MARK: Properties
    var ID: String
    var Name: String
    var Image: String
    var HasDetail:Bool = false
    
    
    //MARK: Initialization
    init?(id:String, name:String, image:String, detail:Bool) {
        
        self.ID=id
        self.Name=name
        self.Image=image
        self.HasDetail=detail

    }
    
}

