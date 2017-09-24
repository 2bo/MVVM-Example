//
//  MVVM_ExampleUITests.swift
//  MVVM ExampleUITests
//
//  Created by Kota_Nakatsubo on 2017/09/23.
//  Copyright © 2017年 Kota_Nakatsubo. All rights reserved.
//

import XCTest

class MVVM_ExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /**
     UITest of TableView in TableViewController
     */
    func testFerrariF12DataDisplayed(){
        let app = XCUIApplication()
        let table = app.tables.element(boundBy: 0)
        
        let ferrariCell = table.cells.element(boundBy: 0)
        XCTAssert(ferrariCell.staticTexts["Ferrari F12"].exists)
        XCTAssert(ferrariCell.staticTexts["730 HP"].exists)
        
        let zondaCell = table.cells.element(boundBy: 1)
        XCTAssert(zondaCell.staticTexts["Pagani Zonda F"].exists)
        XCTAssert(zondaCell.staticTexts["602 HP"].exists)
        
        let lamboCell = table.cells.element(boundBy: 2)
        XCTAssert(lamboCell.staticTexts["Lamborghini Aventador"].exists)
        XCTAssert(lamboCell.staticTexts["700 HP"].exists)
        
    }
    
}
