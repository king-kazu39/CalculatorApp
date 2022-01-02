//
//  ButtonModifier.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/02.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    var item: String
    let buttonWidth = (UIScreen.main.bounds.width - 50) / 4
    let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "."]
    let symbols: [String] = ["÷", "×", "-", "+", "="]

    func setBackgroundColor(item: String) -> Color {
        if numbers.contains(item) {
            return Color(white: 0.2, opacity: 1)
        }
        if symbols.contains(item) {
            return Color.orange
        }
        return Color(white: 0.8, opacity: 1)
    }

    func body(content: Content) -> some View {
        content
            .foregroundColor(numbers.contains(item) || symbols.contains(item) ? .white : .black)
            .background(self.setBackgroundColor(item: item))
            .frame(width: item == "0" || item == "C" ? buttonWidth * 3 + 10 : buttonWidth)
            .cornerRadius(buttonWidth)
    }
}
