//
//  FruitsTests.swift
//  FruitsTests
//
//  Created by Sarika on 07.04.22.
//

import XCTest
import SwiftUI
@testable import Fruits

class FruitsTests: XCTestCase {
    var fruits : [Fruit] = fruitsData
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFruitsData() throws {
        XCTAssert(fruits.count != 0)
        XCTAssert(fruits.count == 13)
        
        for i in 0..<fruits.count {
            XCTAssertNotNil(fruits[i])
        }
    }
}
