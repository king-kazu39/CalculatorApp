//
//  ButtonTextStyle.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

struct ButtonTextStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 40, weight: .regular))
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity
            )
    }
}
