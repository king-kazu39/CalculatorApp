//
//  OperationSymbolsButtonModifier.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct OperationSymbolsButtonModifier: ViewModifier {
    let buttonWidth = (UIScreen.main.bounds.width - 50) / 4

    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(Color.orange)
            .frame(width: buttonWidth)
            .cornerRadius(buttonWidth)
    }
}
