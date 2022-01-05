//
//  CalculateHelper.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import Foundation

enum CalculateHelper {
    static let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    static let operationSymbols: [String] = ["÷", "×", "-", "+", "="]
    static let otherSymbols: [String] = ["C"]

    enum ButtonType {
        case numbers, operationSymbols, otherSymbols
    }

    static func setButtonType(item: String) -> ButtonType? {
        if numbers.contains(item) {
            return ButtonType.numbers
        } else if operationSymbols.contains(item) {
            return ButtonType.operationSymbols
        } else if otherSymbols.contains(item) {
            return ButtonType.otherSymbols
        } else {
            return nil
        }
    }
}
