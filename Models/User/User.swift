//
//  User.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class User {
    
    //MARK: Properties
    var ID: String?
    var ApartmentId: String?
    var Account: Account?
    var RoleId: String?
    var Name: String?
    var Address: String?
    var PhoneNo: String?
    var Description: String?
    
    //MARK: Initialization
    init?(id:String, apartmentId:String, account:Account, roleId:String, name:String, address: String, phoneNo: String, description: String) {
        
        self.ID=id
        self.ApartmentId=apartmentId
        self.Account=account
        self.RoleId=roleId
        self.Name = name
        self.Address = address
        self.PhoneNo = phoneNo
        self.Description = description
    }
    
    init?() {
        self.ID=nil
        self.ApartmentId=nil
        self.Account = nil
        self.RoleId=nil
        self.Name = nil
        self.Address = nil
        self.PhoneNo = nil
        self.Description = nil
    }
    
}
