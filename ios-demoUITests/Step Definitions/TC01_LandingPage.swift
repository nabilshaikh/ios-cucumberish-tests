//
//  TC01_WelcomePage.swift
//  ios-demoUITests
//
//  Created by Nabil Shaikh on 17/01/21.
//

import Foundation
import Cucumberish
import XCTest

class TC01_LandingPage: XCTest {
    
    func TC01_LandingPageImplementation() {
        
        let application = XCUIApplication()
        
        Given("User launch the app") { ( _, _) -> Void in
            application.launch()
        }
        
        Then("User sees the landing page which contains the text as \"([^\\\"]*)\"") { ( args, _) -> Void in
            let welcomeString = (args?[0])!
            XCTAssert(application.staticTexts[welcomeString].exists)
        }
        
        And("User sees the \"([^\\\"]*)\" followed by a button") { ( args, _) -> Void in
            let welcomeString = (args?[0])!
            XCTAssert(application.staticTexts[welcomeString].exists)
            XCTAssert(application.buttons["landingPagebutton"].exists)
        }
        
        When("User tap on Let's start! button") { ( _, _) -> Void in
            application.buttons["landingPagebutton"].tap()
        }
        
        Then("User should navigate to Home page") { ( _, _) -> Void in
            XCTAssert(application.staticTexts["Home"].exists)
        }
        
    }
    
}
