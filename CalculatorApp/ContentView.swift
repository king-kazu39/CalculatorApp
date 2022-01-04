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
    @State var selectedItem: String = "0"
    @State var calculatedNumber: Int = 0
    @State var calculateState: CalculateState = .initial
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Text(selectedItem == "0" ? String(calculatedNumber) : selectedItem)
                        .modifier(CalculateResultModifier())
                }
                VStack {
                    ForEach(calculateItems, id: \.self) { items in
                        NumberView(
                            selectedItem: $selectedItem,
                            calculatedNumber: $calculatedNumber,
                            calculateState: $calculateState,
                            items: items
                        )
                    }
                }.padding(.bottom, 40)
            }
        }
    }
}

struct NumberView: View {
    @Binding var selectedItem: String
    @Binding var calculatedNumber: Int
    @Binding var calculateState: CalculateState
    var items: [String]
    let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    let symbols: [String] = ["÷", "×", "-", "+", "=", "C"]
    var body: some View {
        HStack {
            ForEach(items, id: \.self) { item in
                Button(action: {
                    // 数字が入力された時の処理
                    if numbers.contains(item) {
                        // ボタンが押された時に0が入ってたら
                        if selectedItem == "0" {
                            return selectedItem = item
                        }
                        if selectedItem.count >= 9 {
                            return
                        }
                        return selectedItem += item
                    }
                }) {
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
}

enum CalculateState: String {
    case initial, addition, subtraction, division, multiplication, sum
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
