//
//  sour_mashUITests.swift
//  sour-mashUITests
//
//  Created by James Eisenhauer on 8/12/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import XCTest

class BlackWhiteUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBlackWhite() {
        let app = XCUIApplication()
        app.launch()

        app.tabBars.buttons.element(boundBy: 1).tap()
        XCTAssertTrue(app.staticTexts["lbl_black_title"].exists, "Black Title does not exist")
        XCTAssertTrue(app.staticTexts["lbl_black_sub_title"].exists, "Black Sub Title does not exist")
        waitForElementToAppear(app.tabBars.buttons["White"])
        XCTAssertTrue(app.tabBars.buttons["White"].isHittable)
        usleep(200000)  // failing even though logs think it tapped on button UI does not do anything
        app.tabBars.buttons["White"].tap()
        XCTAssertTrue(app.staticTexts["lbl_white_title"].exists, "White Title does not exist")
        XCTAssertTrue(app.staticTexts["lbl_white_sub_title"].exists, "White Sub Title does not exist")
        
    }
    
    fileprivate func waitForElementToAppear(_ element: XCUIElement,
                                        file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        expectation(for: existsPredicate,
                                evaluatedWith: element, handler: nil)
        
        waitForExpectations(timeout: 5) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after 5 seconds."
                self.recordFailure(withDescription: message,
                                                  inFile: file, atLine: line, expected: true)
            }
        }
    }
    
}


