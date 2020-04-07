//
//  ReferencerTests.swift
//  ReferencerTests
//
//  Created by Sadeed Ahmed  on 3/3/20.
//  Copyright © 2020 Sadeed Ahmad. All rights reserved.
//

import XCTest
import SwiftUI
@testable import Referencer

class ReferencerTests: XCTestCase {
    // testGroundValues is the data which will be used for unit tests.
    let testGroundValues = Ground (
        "",
        "SCG",
        "Sydney",
        "48601",
        "1848",
        "Sydney Cricket Ground Trust",
        ""
    
    )

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    
    /*
    This function testGround tests that the values are equal to the test data
     by using the Ground class and XCTAssertEqual function.
    */
    func testGround() {
        let url = ""
        let name = "MCG"
        let location = "Melbourne"
        let capacity = "1000242"
        let opened = "1853"
        let owner = "Melbourne Cricket Club"
        let notes = ""
        
        
        
        let test_values = Ground(url, name, location, capacity, opened, owner, notes)
        XCTAssertEqual(test_values.name, name)
        XCTAssertEqual(test_values.location, location)
        XCTAssertEqual(test_values.capacity, capacity)
        XCTAssertEqual(test_values.opened, opened)
        XCTAssertEqual(test_values.owner, owner)
        XCTAssertEqual(test_values.notes, notes)
        
       
    }
    
    /*
    This function tests that does the passing of an object into the array of objects works.
    It uses the XCTAssertNotNill function to confirm that the values are not nill.
    */
    func testGroundList() {
        let ground1 = Ground("","MCG", "Melbourne", "100242", "1853", "Melbourne Cricket Club", "")
        let ground2 = Ground("","Optus Stadium","Perth", "60000", "2017", "Vanues Live", "")
        
        let grounds: [Ground] = [ground1, ground2]
        XCTAssertNotNil(grounds[0].url)
        XCTAssertNotNil(grounds[0].name)
        XCTAssertNotNil(grounds[0].location)
        XCTAssertNotNil(grounds[0].capacity)
        XCTAssertNotNil(grounds[0].opened)
        XCTAssertNotNil(grounds[0].owner)
        
        XCTAssertEqual(2, grounds.count)
    }
    /*
       The following functions tests for different values of Ground and comparing them against the
     test data. They check if they are equal to the given data and whether they are nil or not.
    */
    func testGroundName() {
        XCTAssertNotNil(testGroundValues.name)
        XCTAssertEqual(testGroundValues.name, "SCG")
    }
    
    func testGroundLocation() {
        XCTAssertNotNil(testGroundValues.location)
        XCTAssertEqual(testGroundValues.location, "Sydney")
    }
    
    func testGroundCapacity() {
        XCTAssertNotNil(testGroundValues.capacity)
        XCTAssertEqual(testGroundValues.capacity, "48601")
    }
    func testGroundOpened() {
        XCTAssertNotNil(testGroundValues.opened)
        XCTAssertEqual(testGroundValues.opened, "1848")
    }
    func testGroundOwner() {
        XCTAssertNotNil(testGroundValues.owner)
        XCTAssertEqual(testGroundValues.owner, "Sydney Cricket Ground Trust")
    }
    
    func testGroundNotes (){
        XCTAssertEqual(testGroundValues.notes, "")
    }
    
    /*
    function : testDownloadedImage
    Checks that if the url is valid to download an image.
     */
    
    func testDownloadedImage() {
        // Checks that if the url is valid to download an image.
        guard let imageURL = URL(string:"https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528_1280.jpg")
            else {
                return XCTFail("URL is invalid. Insert correct URL")
        }
        
        // checks that if the data can be derived from the given url.
        guard let imageData = try? Data(contentsOf: imageURL)
            else {
               return XCTFail("Could not download the image")
        }
        
        // checks that if the image can be derived from the given data.
        guard let uiImage = UIImage(data: imageData)
            else {
             return XCTFail("Data does not contain any image")
           }
        
        // checks the the image created from the imageData is not nill. 
        let downloadedImage = Image(uiImage: uiImage)
        XCTAssertNotNil(downloadedImage)
    }
    
    
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
