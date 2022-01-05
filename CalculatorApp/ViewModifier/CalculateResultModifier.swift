//
//  CalculateResultModifier.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/02.
//

import SwiftUI

struct CalculateResultModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 100, weight: .light))
            .padding()
            .lineLimit(1)
            .frame(
                width: UIScreen.main.bounds.width - 50,
                height: 200,
                alignment: .trailing
            )
            .minimumScaleFactor(0.4)
    }
}
