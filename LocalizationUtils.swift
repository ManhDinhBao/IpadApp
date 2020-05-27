//
//  LocalizationUtils.swift
//  SmartHomeForIpad
//
//  Created by Dinh Bao Manh on 5/27/20.
//  Copyright © 2020 Lefa Technologies. All rights reserved.
//

import Foundation
class LocalizationUtils: NSObject {
    
    var bundle: Bundle!
    
    class var sharedInstance: LocalizationUtils {
        struct Singleton {
            static let instance: LocalizationUtils = LocalizationUtils()
        }
        return Singleton.instance
    }
    
    override init() {
        super.init()
        bundle = Bundle.main
    }
    
    func resetLocalization() {
        bundle = Bundle.main
    }
    
    func setLanguage(languageCode:String) {
        if let languageDirectoryPath = Bundle.main.path(forResource: languageCode, ofType: "lproj")  {
            bundle = Bundle.init(path: languageDirectoryPath)
        } else {
            resetLocalization()
        }
    }
    
    func localizedStringForKey(key:String, comment:String) -> String {
        return bundle.localizedString(forKey: key, value: comment, table: nil)
    }
    
}
