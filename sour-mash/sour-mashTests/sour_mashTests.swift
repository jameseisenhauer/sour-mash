//
//  sour_mashTests.swift
//  sour-mashTests
//
//  Created by James Eisenhauer on 8/12/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import XCTest
@testable import sour_mash

class sour_mashTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        print("warning: ")
        print("warning: ▸ \(self.name!)")

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        XCTAssertTrue(1 == 1)
    }
    
    func testExample1() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        print("warning: ▸ test example 1 print line")
        XCTAssertTrue(1 == 1)
        
    }
    
    func testExample2() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(1 == 1)
    }
    
    func testExample3() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(1 == 1)
    }
    
}
