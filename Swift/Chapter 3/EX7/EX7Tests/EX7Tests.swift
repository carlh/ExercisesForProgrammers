//
//  EX7Tests.swift
//  EX7Tests
//
//  Created by Carl Hinkle on 7/3/16.
//  Copyright © 2016 Carl Hinkle. All rights reserved.
//

import XCTest
@testable import EX7

class EX7Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
  
  func testFtToMeters() {
    let converter = AreaCalculator()
    
    var sizeInFeet: Double = 1.0
    var sizeInMeters = converter.ftToMeters(sizeInFeet)
    XCTAssertEqualWithAccuracy(sizeInMeters, 0.3048, accuracy: 0.001)
    
    sizeInFeet = 2.5
    sizeInMeters = converter.ftToMeters(sizeInFeet)
    XCTAssertEqualWithAccuracy(sizeInMeters, 0.762, accuracy: 0.001)
  }
  
  func testArea() {
    let converter = AreaCalculator()
    var length = 1.0
    var area = converter.area(length, width: length)
    XCTAssertEqualWithAccuracy(area, 1.0, accuracy: 0.001)
    
    let width = 15.0
    length = 20.0
    area = converter.area(length, width: width)
    XCTAssertEqualWithAccuracy(area, 300, accuracy: 0.001)
    
    let metersWidth = converter.ftToMeters(width)
    let metersLength = converter.ftToMeters(length)
    let metersArea = converter.area(metersLength, width: metersWidth)
    XCTAssertEqualWithAccuracy(metersArea, 27.871, accuracy: 0.001)
  }
    
}
