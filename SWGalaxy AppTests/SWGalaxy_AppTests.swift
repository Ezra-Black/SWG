//
//  SWGalaxy_AppTests.swift
//  SWGalaxy AppTests
//
//  Created by Ezra Black on 9/7/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import XCTest
@testable import SWGalaxy_App

class SWGalaxy_AppTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    //Test to check if results from person are valid.
    func testForSomePersonResults() {
        let expectation = self.expectation(description: "Wait for person results")
        let controller = PersonController()
        controller.searchForPeopleWith(searchTerm: "Luke Skywalker") {
            print("We got back results")
            print(controller.searchResults)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
       
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
