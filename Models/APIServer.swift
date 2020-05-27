//
//  APIServer.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
class APIServer  {
    
    //MARK: Properties
    var Server: String
    var Language: String
    
    //MARK: Initialization
    init?(server:String, language:String) {
        if server == "" {
            self.Server="192.168.19.43"
        }
        else{
            self.Server=server
        }
        
        if language == "" {
            self.Language="en"
        }
        else{
            self.Language=language
        }
        
    }
    
    func GETApartmentRequest(type:ApartmentModel, id:String) -> String{
        
        switch type {
        case .All:
            return "http://"+Server+":8093/api/Apartment?language=" + Language
        case .Id:
            return "http://"+Server+":8093/api/Apartment/"+id+"?language=" + Language
        }
    }
    
    func GETUserRequest(type:UserModel) -> String{
        
        switch type {
        case .All:
            return "http://"+Server+":8093/api/User?language=" + Language
        }
    }
    
}

enum ApartmentModel {
    case All
    case Id
}

enum UserModel {
    case All
}
