//
//  FruitsTests.swift
//  FruitsTests
//
//  Created by Sarika on 07.04.22.
//

import XCTest
@testable import Fruits

class FruitsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFruitsData() throws {
        XCTAssert(fruitsData.count != 0)
    }
}
