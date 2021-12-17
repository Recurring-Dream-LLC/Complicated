//
//  Complicated_WatchKit_ExtensionTests.swift
//  Complicated WatchKit ExtensionTests
//
//  Created by Jeff Hokit on 12/17/21.
//  Copyright © 2021 Recurring Dream LLC. All rights reserved.
//

import XCTest

class Complicated_WatchKit_ExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }


    

    func imageCheck(_ named:String) throws
    {
        let image = try XCTUnwrap(UIImage(named: named))
        let scanner = Scanner(string:named)
        scanner.charactersToBeSkipped = CharacterSet.decimalDigits.inverted
        let scannedSize =  try XCTUnwrap(scanner.scanFloat())
        XCTAssertTrue(image.size.width == CGFloat(scannedSize) && image.size.height == CGFloat(scannedSize))
    }
    
    func testCircularSmall() throws {
        try imageCheck("Circular Small 16")
        try imageCheck("Circular Small 18")
        try imageCheck("Circular Small 19")
        try imageCheck("Circular Small 20")
        try imageCheck("Circular Small 21.5")
    }

    func testModular() throws {
        try imageCheck("Modular 26")
        try imageCheck("Modular 29")
        try imageCheck("Modular 30.5")
        try imageCheck("Modular 32")
        try imageCheck("Modular 34.5")
    }

    func testGraphicCircular() throws {
        try imageCheck("Graphic Circular 42")
        try imageCheck("Graphic Circular 44.5")
        try imageCheck("Graphic Circular 47")
        try imageCheck("Graphic Circular 50")

        try imageCheck("Graphic Circular Foreground 42")
        try imageCheck("Graphic Circular Foreground 44.5")
        try imageCheck("Graphic Circular Foreground 47")
        try imageCheck("Graphic Circular Foreground 50")
        
        try imageCheck("Graphic Circular Background 42")
        try imageCheck("Graphic Circular Background 44.5")
        try imageCheck("Graphic Circular Background 47")
        try imageCheck("Graphic Circular Background 50")
    }

}
