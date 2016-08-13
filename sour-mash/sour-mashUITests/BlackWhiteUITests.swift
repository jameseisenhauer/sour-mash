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

        app.buttons.element(boundBy: 1).tap()
        XCTAssertTrue(app.staticTexts["lbl_black_title"].exists, "Black Title does not exist")
        XCTAssertTrue(app.staticTexts["lbl_black_sub_title"].exists, "Black Sub Title does not exist")

        app.buttons.element(boundBy: 0).tap()
        XCTAssertTrue(app.staticTexts["lbl_white_title"].exists, "White Title does not exist")
        XCTAssertTrue(app.staticTexts["lbl_white_sub_title"].exists, "White Sub Title does not exist")
        
    }
    
}
