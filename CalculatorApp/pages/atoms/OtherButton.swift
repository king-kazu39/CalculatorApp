//
//  OtherButton.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct OtherButton: View {
    var item: String
    var function: () -> Void
    var body: some View {
        Button(action: {
            function()
        }) {
            Text(item).padding()
        }
        .buttonStyle(ButtonTextStyle())
        .modifier(OtherSymbolsButtonModifier(item: item))
    }
}

struct OtherButton_Previews: PreviewProvider {
    static var previews: some View {
        OtherButton(item: "C", function: {})
    }
}
