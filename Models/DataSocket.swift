//
//  DataSocket.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/13/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
struct DataSocket {
    
    let ipAddress: String!
    let port: Int!
    
    init(ip: String, port: String){
        self.ipAddress = ip
        self.port      = Int(port)
    }
}
