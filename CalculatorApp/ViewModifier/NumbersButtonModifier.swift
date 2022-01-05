//
//  NumbersButtonModifier.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct NumbersButtonModifier: ViewModifier {
    var item: String
    let buttonWidth = (UIScreen.main.bounds.width - 50) / 4

    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(Color(white: 0.2, opacity: 1))
            .frame(width: item == "0" ? buttonWidth * 3 + 10 : buttonWidth)
            .cornerRadius(buttonWidth)
    }
}
