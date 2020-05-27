//
//  UserInforAlertView.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/20/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
import UIKit

class UserInfoAlertView:UIView{
    
    static let instance = UserInfoAlertView()
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var userApartmentIdLabel: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var userAvatarLabel: UIImageView!
    @IBOutlet weak var userPhoneLabel: UILabel!
    @IBOutlet weak var userDescriptionLabel: UILabel!
    @IBOutlet weak var userAddressLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("UserInfoAlert", owner: self, options: nil)
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
    func showAlert(user:User) {
        userNameLabel.text = user.Name
        userIdLabel.text=user.ID
        userAddressLabel.text = user.Address
        userDescriptionLabel.text = user.Description
        userPhoneLabel.text = user.PhoneNo
        
        let windows = UIApplication.shared.windows
        let lastWindow = windows.last
        lastWindow?.addSubview(parentView)
    }
    @IBAction func closeAlert(_ sender: UIButton) {
        parentView.removeFromSuperview()
    }
}
