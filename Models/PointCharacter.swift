//
//  PointCharacter.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/26/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class PointCharacter:Decodable {
    
    //MARK: Properties
    var ID: String
    var Data: String
    
    //MARK: Initialization
    init?(id:String, map:String) {
        self.ID=id
        self.Data=map
    }

}


