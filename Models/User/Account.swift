//
//  Account.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 4/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Account {
    
    //MARK: Properties
    var ID: String?
    var UserName: String?
    var Password: String?
    
    //MARK: Initialization
    init?(id:String, userName:String, passWord:String ) {
        
        self.ID=id
        self.UserName=userName
        self.Password=passWord

    }
    
    init?() {
        self.ID=nil
        self.UserName=nil
        self.Password=nil
    }
    
}
