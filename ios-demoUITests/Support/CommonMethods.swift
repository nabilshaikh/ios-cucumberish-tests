//
//  CommonMethods.swift
//  ios-demoUITests
//
//  Created by Nabil Shaikh on 17/01/21.
//

import Foundation
import XCTest

class CommonMethods: XCTest {
    
    func waitForElementToAppear(_ element: XCUIElementQuery) -> Bool {
            let existsPredicate = NSPredicate(format: "exists == true")
            let expectation = XCTNSPredicateExpectation(predicate: existsPredicate,
                                                        object: element)
            let result = XCTWaiter().wait(for: [expectation], timeout: 5)
            return result == .completed
        }
}
