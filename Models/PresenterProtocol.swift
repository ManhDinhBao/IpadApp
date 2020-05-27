//
//  PresentProtocol.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/13/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
protocol PresenterProtocol: class {
    
    func resetUIWithConnection(status: Bool)
    func updateStatusViewWith(status: String)
    func update(message: String)
    func disConnectServer(message: String)
}
