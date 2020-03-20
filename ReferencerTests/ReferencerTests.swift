//
//  ReferencerTests.swift
//  ReferencerTests
//
//  Created by Sadeed Ahmed  on 3/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import XCTest
@testable import Referencer

class ReferencerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGround() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let name = "MCG"
        let location = "Melbourne"
        let capacity = 1000242
        let opened = "1853"
        let owner = "Melbourne Cricket Club"
        
        
        let test_values = Ground(name, location, capacity, opened, owner)
        XCTAssertEqual(test_values.name, name)
        XCTAssertEqual(test_values.location, location)
        XCTAssertEqual(test_values.capacity, capacity)
        XCTAssertEqual(test_values.opened, opened)
        XCTAssertEqual(test_values.owner, owner)
       
    }
    
    func testGroundList() {
        let ground1 = Ground("MCG", "Melbourne", 100242, "1853", "Melbourne Cricket Club")
        let ground2 = Ground("Optus Stadium","Perth", 60000, "2017", "Vanues Live")
        
        let grounds: [Ground] = [ground1, ground2]
        XCTAssertNotNil(grounds[0].name)
        XCTAssertNotNil(grounds[0].location)
        XCTAssertNotNil(grounds[0].capacity)
        XCTAssertNotNil(grounds[0].opened)
        XCTAssertNotNil(grounds[0].owner)
        
        XCTAssertEqual(2, grounds.count)
        
        
    }
    
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
