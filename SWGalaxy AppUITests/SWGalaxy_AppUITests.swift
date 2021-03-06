//
//  SWGalaxy_AppUITests.swift
//  SWGalaxy AppUITests
//
//  Created by Ezra Black on 9/7/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import XCTest
@testable import SWGalaxy_App

class SWGalaxy_AppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let expectation = XCTestExpectation(description: "Luke Networking Call Worked Successfully")
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["Enter"]/*[[".buttons[\"Enter\"].staticTexts[\"Enter\"]",".staticTexts[\"Enter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let searchbar = app.tables["Empty list"].children(matching: .other).element(boundBy: 1).children(matching: .searchField).element
        searchbar.tap()
        searchbar.typeText("Luke Skywalker")
        XCUIApplication().keyboards.buttons["search"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
