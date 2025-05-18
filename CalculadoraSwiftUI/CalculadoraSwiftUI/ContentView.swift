//
//  ContentView.swift
//  CalculadoraSwiftUI
//
//  Created by user276556 on 5/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var display = ""
    private let calculator = Calculator()

    var body: some View {
        VStack(spacing: 12) {
            Text(display.isEmpty ? "0" : display)
                .font(.largeTitle)
                .padding()

            ForEach(rows, id: \.self) { row in
                HStack(spacing: 12) {
                    ForEach(row, id: \.self) { label in
                        Button(label) {
                            handleTap(label)
                        }
                        .font(.title2)
                        .frame(width: 60, height: 60)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    }
                }
            }
        }
        .padding()
    }

    private let rows = [
        ["7","8","9","÷"],
        ["4","5","6","×"],
        ["1","2","3","-"],
        ["0",".","C","+"],
        ["="]
    ]

    private func handleTap(_ label: String) {
        switch label {
        case "C":
            display = ""
        case "=":
            if let result = evaluate(display) {
                display = String(result)
            } else {
                display = "Error"
            }
        default:
            display.append(label)
        }
    }

    private func evaluate(_ text: String) -> Double? {
        // separa conforme operador
        for op in ["+","-","×","÷"] {
            let parts = text.split(separator: Character(op), maxSplits: 1).map(String.init)
            if parts.count == 2,
               let a = Double(parts[0]),
               let b = Double(parts[1]) {
                switch op {
                case "+": return calculator.add(a, b)
                case "-": return calculator.subtract(a, b)
                case "×": return calculator.multiply(a, b)
                case "÷": return calculator.divide(a, b)
                default: break
                }
            }
        }
        return nil
    }
}

