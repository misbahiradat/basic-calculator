//
//  KalculatorUITests.swift
//  KalculatorUITests
//
//  Created by Adil Saleem on 31/10/2023.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

final class KalculatorUITests: XCTestCase {
    //1
    struct AccessibilityIdentifier {
        static let lblTitle = "lblTitle"
        static let lblValue = "lblValue"
        static let btn_0 = "btn_0"
        static let btn_1 = "btn_1"
        static let btn_2 = "btn_2"
        static let btn_3 = "btn_3"
        static let btn_4 = "btn_4"
        static let btn_5 = "btn_5"
        static let btn_6 = "btn_6"
        static let btn_7 = "btn_7"
        static let btn_8 = "btn_8"
        static let btn_9 = "btn_9"
        static let btn_equal = "btn_equal"
        static let btn_plus = "btn_plus"
        static let btn_minus = "btn_minus"
        static let btn_multiplication = "btn_multiplication"
        static let btn_devide = "btn_devide"
        static let btn_clear = "btn_clear"
    }
    //2
    struct calculatorFailureMessage {
        static let lblTitleNotExist = "lblTitle is not exist."
        static let lblValueNotExist = "lblValue is not exist."
        static let btn_0NotExist = "btn_0 is not exist."
        static let btn_1NotExist = "btn_1 is not exist."
        static let btn_2NotExist = "btn_2 is not exist."
        static let btn_3NotExist = "btn_3 is not exist."
        static let btn_4NotExist = "btn_4 is not exist."
        static let btn_5NotExist = "btn_5 is not exist."
        static let btn_6NotExist = "btn_6 is not exist."
        static let btn_7NotExist = "btn_7 is not exist."
        static let btn_8NotExist = "btn_8 is not exist."
        static let btn_9NotExist = "btn_9 is not exist."
        static let btn_equalNotExist = "btn_equal is not exist."
        static let btn_plusNotExist = "btn_plus is not exist."
        static let btn_minusNotExist = "btn_minus is not exist."
        static let btn_multiplicationNotExist = "btn_multiplication is not exist."
        static let btn_devideNotExist = "btn_devide is not exist."
        static let btn_clearNotExist = "btn_clear is not exist."
        
        static let lblTitleNotDisplayed = "Title is not showing."
        static let lblValueNotDisplayed = "Result or Error is not showing."
        
        static let lblTitleText = "Basic Calculator"

    }
    //3
    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    //4
    func testCalculatorUIExistFlow() throws {
        let app = XCUIApplication()
        
        
        let lblTitle = app.staticTexts[AccessibilityIdentifier.lblTitle]
        XCTAssertTrue(lblTitle.exists, calculatorFailureMessage.lblTitleNotExist)

        let lblValue = app.staticTexts[AccessibilityIdentifier.lblValue]
        XCTAssertTrue(lblValue.exists, calculatorFailureMessage.lblValueNotExist)
        
        let btn_0 = app.buttons[AccessibilityIdentifier.btn_0]
        XCTAssertTrue(btn_0.exists, calculatorFailureMessage.btn_0NotExist)
        
        let btn_1 = app.buttons[AccessibilityIdentifier.btn_1]
        XCTAssertTrue(btn_1.exists, calculatorFailureMessage.btn_1NotExist)
        
        let btn_2 = app.buttons[AccessibilityIdentifier.btn_2]
        XCTAssertTrue(btn_2.exists, calculatorFailureMessage.btn_2NotExist)
        
        let btn_3 = app.buttons[AccessibilityIdentifier.btn_3]
        XCTAssertTrue(btn_3.exists, calculatorFailureMessage.btn_3NotExist)
        
        let btn_4 = app.buttons[AccessibilityIdentifier.btn_4]
        XCTAssertTrue(btn_4.exists, calculatorFailureMessage.btn_4NotExist)
        
        let btn_5 = app.buttons[AccessibilityIdentifier.btn_5]
        XCTAssertTrue(btn_5.exists, calculatorFailureMessage.btn_5NotExist)
        
        let btn_6 = app.buttons[AccessibilityIdentifier.btn_6]
        XCTAssertTrue(btn_6.exists, calculatorFailureMessage.btn_6NotExist)
        
        let btn_7 = app.buttons[AccessibilityIdentifier.btn_7]
        XCTAssertTrue(btn_7.exists, calculatorFailureMessage.btn_7NotExist)
        
        let btn_8 = app.buttons[AccessibilityIdentifier.btn_8]
        XCTAssertTrue(btn_8.exists, calculatorFailureMessage.btn_8NotExist)
        
        let btn_9 = app.buttons[AccessibilityIdentifier.btn_9]
        XCTAssertTrue(btn_9.exists, calculatorFailureMessage.btn_9NotExist)
        
        let btn_equal = app.buttons[AccessibilityIdentifier.btn_equal]
        XCTAssertTrue(btn_equal.exists, calculatorFailureMessage.btn_equalNotExist)
        
        let btn_plus = app.buttons[AccessibilityIdentifier.btn_plus]
        XCTAssertTrue(btn_plus.exists, calculatorFailureMessage.btn_plusNotExist)
        
        let btn_minus = app.buttons[AccessibilityIdentifier.btn_minus]
        XCTAssertTrue(btn_minus.exists, calculatorFailureMessage.btn_minusNotExist)
        
        let btn_multiplication = app.buttons[AccessibilityIdentifier.btn_multiplication]
        XCTAssertTrue(btn_multiplication.exists, calculatorFailureMessage.btn_multiplicationNotExist)
        
        let btn_devide = app.buttons[AccessibilityIdentifier.btn_devide]
        XCTAssertTrue(btn_devide.exists, calculatorFailureMessage.btn_devideNotExist)
        
        let btn_clear = app.buttons[AccessibilityIdentifier.btn_clear]
        XCTAssertTrue(btn_clear.exists, calculatorFailureMessage.btn_clearNotExist)
    }
    
    func testCalculatorUITapFlow() throws {
        let app = XCUIApplication()
        
        let btn_0 = app.buttons[AccessibilityIdentifier.btn_0]
        btn_0.tap()
        
        let btn_1 = app.buttons[AccessibilityIdentifier.btn_1]
        btn_1.tap()
        
        let btn_2 = app.buttons[AccessibilityIdentifier.btn_2]
        btn_2.tap()
        
        let btn_3 = app.buttons[AccessibilityIdentifier.btn_3]
        btn_3.tap()
        
        let btn_4 = app.buttons[AccessibilityIdentifier.btn_4]
        btn_4.tap()
        
        let btn_5 = app.buttons[AccessibilityIdentifier.btn_5]
        btn_5.tap()
        
        let btn_6 = app.buttons[AccessibilityIdentifier.btn_6]
        btn_6.tap()
        
        let btn_7 = app.buttons[AccessibilityIdentifier.btn_7]
        btn_7.tap()
        
        let btn_8 = app.buttons[AccessibilityIdentifier.btn_8]
        btn_8.tap()
        
        let btn_9 = app.buttons[AccessibilityIdentifier.btn_9]
        btn_9.tap()
        
        let btn_equal = app.buttons[AccessibilityIdentifier.btn_equal]
        btn_equal.tap()
        
        let btn_plus = app.buttons[AccessibilityIdentifier.btn_plus]
        btn_plus.tap()
        
        let btn_minus = app.buttons[AccessibilityIdentifier.btn_minus]
        btn_minus.tap()
        
        let btn_multiplication = app.buttons[AccessibilityIdentifier.btn_multiplication]
        btn_multiplication.tap()
        
        let btn_devide = app.buttons[AccessibilityIdentifier.btn_devide]
        btn_devide.tap()
        
        let btn_clear = app.buttons[AccessibilityIdentifier.btn_clear]
        btn_clear.tap()
    }

    func testCalculatorUIDisplayResultFlow() throws {
        let app = XCUIApplication()
        
        let lblTitle = app.staticTexts[AccessibilityIdentifier.lblTitle]
        XCTAssertEqual(lblTitle.label, calculatorFailureMessage.lblTitleText, calculatorFailureMessage.lblTitleNotDisplayed)
    
        let lblValue = app.staticTexts[AccessibilityIdentifier.lblValue]
        
        XCTAssertFalse(lblValue.label.isEmpty,calculatorFailureMessage.lblValueNotDisplayed)
        

    }
}
