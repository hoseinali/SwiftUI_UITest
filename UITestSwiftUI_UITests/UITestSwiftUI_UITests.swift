//
//  UITestSwiftUI_UITests.swift
//  UITestSwiftUI_UITests
//
//  Created by Hossein Ali Alborzi on 12/1/21.
//

import XCTest

class UITestSwiftUI_UITests: XCTestCase {
    
    private var app: XCUIApplication!
    
    override func setUp() {
        
        super.setUp()
        continueAfterFailure = true
        self.app = XCUIApplication()
        self.app.launchEnvironment = ["EVN":"TEST"]  // Launch Enviroment Test
        self.app.launch()
    }
    
    func test_login() {
        
        let usernameTextfiled = self.app.textFields["UsernameCustomTextFiled"]
        let passwordTextfiled = self.app.textFields["passwordCustomTextFiled"]
        let loginButton = self.app.buttons["loginCustomButton"]
        
        usernameTextfiled.tap()
        usernameTextfiled.typeText("hosein")
        passwordTextfiled.tap()
        passwordTextfiled.typeText("123456")
        loginButton.tap()
        
    }
    
    
}
