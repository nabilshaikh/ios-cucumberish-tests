//
//  CucumberishInitializer.swift
//  ios-demoUITests
//
//  Created by Nabil Shaikh on 13/01/21.
//

import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {
    
    @objc class func setupCucumberish() {
    
    let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: nil, excludeTags: nil)
        
    }
}
