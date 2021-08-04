//
//  RPSTests.swift
//  RPSTests
//
//  Created by Данил Казаков on 04.08.2021.
//

import XCTest
@testable import RPS

class RPSTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRockSign() throws {
        let sign = Sign.rock
        XCTAssert(sign.takeTurn(.rock) == .draw)
        XCTAssert(sign.takeTurn(.paper) == .lose)
        XCTAssert(sign.takeTurn(.scissors) == .win)
    }

    func testPaperSign() throws {
        let sign = Sign.paper
        XCTAssert(sign.takeTurn(.rock) == .win)
        XCTAssert(sign.takeTurn(.paper) == .draw)
        XCTAssert(sign.takeTurn(.scissors) == .lose)
        }
    
    func testScissorsSign() throws {
        let sign = Sign.scissors
        XCTAssert(sign.takeTurn(.rock) == .lose)
        XCTAssert(sign.takeTurn(.paper) == .win)
        XCTAssert(sign.takeTurn(.scissors) == .draw)
    }

}
