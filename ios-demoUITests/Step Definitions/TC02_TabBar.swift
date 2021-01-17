//
//  TC02_TabBar.swift
//  ios-demoUITests
//
//  Created by Nabil Shaikh on 17/01/21.
//

import Foundation
import Cucumberish
import XCTest

class TC02_TabBar: XCTest {
    
    func TC02_TabBarImplementation() {
        
        let application = XCUIApplication()
        
        Then("User sees the tab in order of \"([^\\\"]*)\"") { (tab, _) -> Void in
            let tabBarString = (tab?[0])!
            print("tabBarString" , tabBarString)
            for eachTab in tabBarString.components(separatedBy: ", ") {
                _ = CommonMethods().waitForElementToAppear(application.buttons)
                XCTAssert(application.buttons[eachTab].exists)
            }
        }
        
        And("User clicks on Let's start! button") { ( _, _) -> Void in
            application.buttons["landingPagebutton"].tap()
        }
        
        When("User taps on \"([^\\\"]*)\"") { (tab, _) -> Void in
            let tabString = (tab?[0])!
            _ = CommonMethods().waitForElementToAppear(application.buttons)
            application.buttons[tabString].tap()
        }
        
        Then("User sees the \"([^\\\"]*)\" page") { (pageName, _) -> Void in
            let pageName = (pageName?[0])!
            XCTAssert(application.navigationBars.staticTexts[pageName].exists)
        }
        
    }
    
}
