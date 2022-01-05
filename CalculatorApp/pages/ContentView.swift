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
    @ObservedObject var contentVM = ContentViewModel()
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Text(contentVM.selectedItem == "0" ? String(contentVM.calculatedNumber) : contentVM.selectedItem)
                        .modifier(CalculateResultModifier())
                }
                VStack {
                    ForEach(calculateItems, id: \.self) { items in
                        HStack {
                            ForEach(items, id: \.self) { item in
                                Group {
                                    switch CalculateHelper.setButtonType(item: item) {
                                    case .numbers:
                                        NumberButton(
                                            item: item,
                                            function: { contentVM.handleNumbersButton(item: item) }
                                        )

                                    case .operationSymbols:
                                        OperationButton(
                                            item: item,
                                            function: { contentVM.handleSymbolsButton(item: item) }
                                        )

                                    case .otherSymbols:
                                        OtherButton(
                                            item: item,
                                            function: { contentVM.handleOtherSymbolsButton(item: item) }
                                        )

                                    case .none:
                                        EmptyView()
                                    }
                                }
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
