//
//  Calculator.swift
//  CalculadoraSwiftUI
//
//  Created by user276556 on 5/17/25.
//

import Foundation

struct Calculator {
    func add(_ a: Double?, _ b: Double?) -> Double? {
        guard let x = a, let y = b else { return nil }
        return x + y
    }

    func subtract(_ a: Double?, _ b: Double?) -> Double? {
        guard let x = a, let y = b else { return nil }
        return x - y
    }

    func multiply(_ a: Double?, _ b: Double?) -> Double? {
        guard let x = a, let y = b else { return nil }
        return x * y
    }

    func divide(_ a: Double?, _ b: Double?) -> Double? {
        guard let x = a, let y = b, y != 0 else { return nil }
        return x / y
    }
}
