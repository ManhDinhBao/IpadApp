//
//  Floor.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Floor:Decodable  {
    
    //MARK: Properties
    var ID: String
    var Name: String
    var BuildingId: String
    var Apartments: [Apartment]
    
    //MARK: Initialization
    init?(id:String, name:String, buildingId:String, apartments:[Apartment]) {
        
        self.ID=id
        self.Name=name
        self.BuildingId=buildingId
        self.Apartments=apartments

    }
    
}
