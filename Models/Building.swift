//
//  Building.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Building:Decodable {
    
    //MARK: Properties
    var ID: String
    var Name: String
    var Address: String
    var Floors: [Floor]
    
    //MARK: Initialization
    init?(id:String, name:String, address:String, floors:[Floor]) {
        
        self.ID=id
        self.Name=name
        self.Address=address
        self.Floors=floors

    }
    
}
