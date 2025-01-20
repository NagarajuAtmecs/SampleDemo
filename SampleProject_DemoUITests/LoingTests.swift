//
//  LoingTests.swift
//  SampleProject_DemoUITests
//
//  Created by Nagaraju Kankanala on 20/01/25.
//

import XCTest
@testable import SampleProject_Demo

final class LoingTests: XCTestCase {
    
    var app  : XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
        
    }
    
    override func tearDown() {
        app = nil
        super.tearDown()
    }
    
    func test_emailTextfieldIsempty() {
        let userName = app.textFields["UserName"]
        XCTAssertTrue(userName.exists, "The first text field does not exist.")
        XCTAssertTrue((userName.value as? String)?.isEmpty ?? false || userName.value as? String == userName.placeholderValue, "The username text field is not empty initially or only contains placeholder text.")
    }

    func test_passwordTextfieldIsempty() {
        let password = app.textFields["Password"]
        XCTAssertTrue(password.exists, "The first text field does not exist.")
        XCTAssertTrue((password.value as? String)?.isEmpty ?? false || password.value as? String == password.placeholderValue, "The password text field is not empty initially or only contains placeholder text.")
    }
    
    func test_loginBtnValidataion() {
        let login = app.buttons["LoginButton"]
        XCTAssertTrue(login.exists)
    }
    
    func test_loginBtnValidationTrue() {
        let login = app.buttons["LoginButton"]
        XCTAssertTrue(login.exists)
    }
    
    
}
