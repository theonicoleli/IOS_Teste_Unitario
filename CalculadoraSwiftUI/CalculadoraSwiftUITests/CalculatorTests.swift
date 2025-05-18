//
//  CalculatorTests.swift
//  CalculadoraSwiftUI
//
//  Created by user276556 on 5/17/25.
//

import XCTest
@testable import CalculadoraSwiftUI

class CalculatorTests: XCTestCase {
    var calc: Calculator!

    override func setUp() {
        super.setUp()
        calc = Calculator()
    }

    override func tearDown() {
        calc = nil
        super.tearDown()
    }

    func testAddTwoPositiveNumbers() {
        XCTAssertEqual(calc.add(2, 3), 5)
    }

    func testAddWithNil() {
        XCTAssertNil(calc.add(nil, 3))
        XCTAssertNil(calc.add(2, nil))
        XCTAssertNil(calc.add(nil, nil))
    }

    func testSubtractTwoNumbers() {
        XCTAssertEqual(calc.subtract(5, 2), 3)
    }

    func testSubtractWithNil() {
        XCTAssertNil(calc.subtract(nil, 2))
        XCTAssertNil(calc.subtract(5, nil))
    }

    func testMultiplyTwoNumbers() {
        XCTAssertEqual(calc.multiply(4, 3), 12)
    }

    func testMultiplyWithNil() {
        XCTAssertNil(calc.multiply(nil, 3))
        XCTAssertNil(calc.multiply(4, nil))
    }

    func testDivideTwoNumbers() {
        XCTAssertEqual(calc.divide(10, 2), 5)
    }

    func testDivideByZero() {
        XCTAssertNil(calc.divide(5, 0))
    }

    func testDivideWithNil() {
        XCTAssertNil(calc.divide(nil, 2))
        XCTAssertNil(calc.divide(5, nil))
    }
}
