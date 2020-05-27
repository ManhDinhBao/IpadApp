//
//  WaitingAlertView.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/25/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
import UIKit

class WaitingAlertView: UIView {
    static let instance = WaitingAlertView()
    
    @IBOutlet weak var blurBackground: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet var parentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("WaitingAlert", owner: self, options: nil)
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
    func showAlert(status:String) {
        
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light)) as UIVisualEffectView
        
        visualEffectView.frame=blurBackground.bounds
        
        blurBackground.addSubview(visualEffectView)
        blurBackground.alpha = 1
        blurBackground.isUserInteractionEnabled = true
        
        statusLabel.text = status + "..."
        let windows = UIApplication.shared.windows
        let lastWindow = windows.last
        lastWindow?.addSubview(parentView)
    }
    
    func setStatus(status:String) {
        statusLabel.text = status + "..."
    }
    
    func hideAlert() {
         parentView.removeFromSuperview()
    }
}

