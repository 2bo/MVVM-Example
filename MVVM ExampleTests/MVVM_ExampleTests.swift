//
//  MVVM_ExampleTests.swift
//  MVVM ExampleTests
//
//  Created by Kota_Nakatsubo on 2017/09/23.
//  Copyright © 2017年 Kota_Nakatsubo. All rights reserved.
//

import XCTest
@testable import MVVM_Example

class MVVM_ExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    /**
     Test of CarViewModel
     */
    func testCarViewModelWithFerrariF12() {
        let ferrariF12 = Car(model: "F12", make: "Ferrari", kilowatts: 544, photoURL: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        let ferrariViewModel = CarViewModel(car: ferrariF12)
        XCTAssertEqual(ferrariViewModel.modelText, "F12")
        XCTAssertEqual(ferrariViewModel.makeText, "Ferrari")
        XCTAssertEqual(ferrariViewModel.horsepowerText, "730 HP")
        XCTAssertEqual(ferrariViewModel.photoURL, URL(string: ferrariF12.photoURL))
        XCTAssertEqual(ferrariViewModel.titleText, "Ferrari F12")
    }

    
}
