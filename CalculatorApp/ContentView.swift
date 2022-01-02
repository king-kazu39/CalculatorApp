//
//  ContentView.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/02.
//

import SwiftUI

struct ContentView: View {
    let calculateItems: [[String]] = [
        ["C", "÷"],
        ["7", "8", "9", "×"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "="]
    ]
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Text("0")
                    .modifier(CalculateResultModifier())
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
                                .modifier(ButtonModifier(item: item))
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
