//
//  Message.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/12/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import UIKit
class Message {

//MARK: Properties
var Id: String?
var Title: String?
var Detail: String?
var SendDate: Date?
var IsEnergency: Bool?
var AttachAddress: [String]?
    

//MARK: Initialization
init?(id:String, title:String, detail:String, sendDate:Date, isEmergency:Bool, attach:[String]) {
    self.Id=id
    self.Title=title
    self.Detail=detail
    self.SendDate=sendDate
    self.IsEnergency=isEmergency
    self.AttachAddress=attach
}
    
init?() {
    self.Id=nil
    self.Title=nil
    self.Detail=nil
    self.SendDate=nil
    self.IsEnergency=nil
    self.AttachAddress=nil
}

}
