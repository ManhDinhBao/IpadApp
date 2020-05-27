//
//  SoftInfoAlertView.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/21/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
import UIKit

class SoftInfoAlertView: UIView {
    static let instance = SoftInfoAlertView()
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet var parentView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("SoftInfoAlert", owner: self, options: nil)
        CommonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func CommonInit(){
        parentView.frame = CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        
        alertView.layer.cornerRadius = 5
        
    }
    func showAlert() {
        
        let windows = UIApplication.shared.windows
        let lastWindow = windows.last
        lastWindow?.addSubview(parentView)
    }
    @IBAction func closeAlert(_ sender: Any) {
        parentView.removeFromSuperview()
    }
}
