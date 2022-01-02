//
//  ContentView.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/02.
//

import SwiftUI

struct ContentView: View {
    let  buttonWidth: CGFloat = (UIScreen.main.bounds.width - 50) / 4
    let calculateItems: [[String]] = [
        ["C", "", "", "÷"],
        ["7", "8", "9", "×"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "", "="]
    ]
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 100, weight: .light))
                    .padding()
                    .lineLimit(1)
                    .frame(
                        width: UIScreen.main.bounds.width - 50,
                        height: 100,
                        alignment: .trailing
                    )
                    .minimumScaleFactor(0.4)
                VStack {
                    ForEach(calculateItems, id: \.self) { items in
                        HStack {
                            ForEach(items, id: \.self) { item in
                                Button(action: {}) {
                                    Text(item)
                                        .font(.system(size: 30, weight: .regular))
                                        .frame(
                                            minWidth: 0,
                                            maxWidth: .infinity,
                                            minHeight: 0,
                                            maxHeight: .infinity
                                        )
                                }
                                .foregroundColor(.white)
                                .background(Color(white: 0.2, opacity: 1))
                                .frame(width: buttonWidth)
                                .cornerRadius(buttonWidth)
                            }
                        }
                    }
                }.padding(.bottom, 40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
