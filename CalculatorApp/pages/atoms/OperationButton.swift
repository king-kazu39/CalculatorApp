//
//  OperationButton.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct OperationButton: View {
    var item: String
    var function: () -> Void
    var body: some View {
        Button(action: {
            function()
        }) {
            Text(item).padding()
        }
        .buttonStyle(ButtonTextStyle())
        .modifier(OperationSymbolsButtonModifier())
    }
}

struct OperationButton_Previews: PreviewProvider {
    static var previews: some View {
        OperationButton(item: "+", function: {})
    }
}
