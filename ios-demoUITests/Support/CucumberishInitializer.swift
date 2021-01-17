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
        
        beforeStart { () -> Void in
            TC01_LandingPage().TC01_LandingPageImplementation()
            TC02_TabBar().TC02_TabBarImplementation()
        }
    
    let bundle = Bundle(for: CucumberishInitializer.self)
        Cucumberish.executeFeatures(inDirectory: "Features", from: bundle, includeTags: nil, excludeTags: nil)
    }
}
