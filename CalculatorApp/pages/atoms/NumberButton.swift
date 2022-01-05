//
//  NumberButton.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct NumberButton: View {
    var item: String
    var function: () -> Void
    var body: some View {
        Button(action: {
            function()
        }) {
            Text(item).padding()
        }
        .buttonStyle(ButtonTextStyle())
        .modifier(NumbersButtonModifier(item: item))
    }
}

struct NumberButton_Previews: PreviewProvider {
    static var previews: some View {
        NumberButton(item: "1", function: {})
    }
}
