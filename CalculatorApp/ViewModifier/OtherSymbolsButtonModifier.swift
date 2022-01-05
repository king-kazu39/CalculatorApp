//
//  OtherSymbolsButtonModifier.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct OtherSymbolsButtonModifier: ViewModifier {
    var item: String
    let buttonWidth = (UIScreen.main.bounds.width - 50) / 4

    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .background(Color(white: 0.8, opacity: 1))
            .frame(width: item == "C" ?  buttonWidth * 3 + 10 : buttonWidth)
            .cornerRadius(buttonWidth)
    }
}
