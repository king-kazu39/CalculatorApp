//
//  ContentViewModel.swift
//  CalculatorApp
//
//  Created by kazuya on 2022/01/05.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var selectedItem: String = "0"
    @Published var calculatedNumber: Int = 0
    @Published var calculateType: CalculateType = .initial
    
    /// 数字が入力された時に処理するメソッド
    /// - Parameter item: ボタン名
    func handleNumbersButton(item: String) {
        // ボタンが押された時に0が入ってたら
        if selectedItem == "0" {
            selectedItem = item
            return
        }
        if selectedItem.count >= 9 {
            return
        }
        selectedItem += item
        return
    }

    
    /// 四則演算記号(=イコールも含む)が入力された時に処理するメソッド
    /// - Parameter item: ボタン名
    func handleSymbolsButton(item: String) {
        guard let selectedNumber = Int(selectedItem) else { return }
        switch item {
        case "+":
            setCalculateState(
                type: .addition,
                selectedItem: &selectedItem,
                changedCalculateType: &calculateType,
                calculatedNumber: &calculatedNumber,
                selectedNumer: selectedNumber
            )

        case "-":
            setCalculateState(
                type: .subtraction,
                selectedItem: &selectedItem,
                changedCalculateType: &calculateType,
                calculatedNumber: &calculatedNumber,
                selectedNumer: selectedNumber
            )

        case "÷":
            setCalculateState(
                type: .division,
                selectedItem: &selectedItem,
                changedCalculateType: &calculateType,
                calculatedNumber: &calculatedNumber,
                selectedNumer: selectedNumber
            )

        case "×":
            setCalculateState(
                type: .multiplication,
                selectedItem: &selectedItem,
                changedCalculateType: &calculateType,
                calculatedNumber: &calculatedNumber,
                selectedNumer: selectedNumber
            )

        case "=":
            selectedItem = "0"
            calculate(
                type: calculateType,
                calculatedNumber: &calculatedNumber,
                selectedNumber: selectedNumber
            )
            calculateType = .sum

        default:
            calculateType = .initial
        }
    }

    /// 四則演算子記号以外の演算子記号のボタンを押したときに処理するメソッド
    /// - Parameter item: ボタン名
    func handleOtherSymbolsButton(item: String) {
        if item == "C" {
            calculatedNumber = 0
            selectedItem = "0"
            calculateType = .initial
            return
        }
    }

    /// 四則演算の計算タイプなど状態を変更するメソッド
    /// - Parameters:
    ///   - type: 四則演算の計算タイプ
    ///   - selectedItem: ボタンが押された時の値(数値or記号)
    ///   - changedCalculateType: 変更がかけられた時の計算タイプ
    ///   - calculatedNumber: 計算された後の数値
    ///   - selectedNumer: ボタンが押された時の値(数値or記号)
    private func setCalculateState(
        type: CalculateType,
        selectedItem: inout String,
        changedCalculateType: inout CalculateType,
        calculatedNumber: inout Int,
        selectedNumer: Int
    ) {
        if selectedItem == "0" {
            changedCalculateType = type
            return
        }
        selectedItem = "0"
        changedCalculateType = type
        calculate(
            type: type,
            calculatedNumber: &calculatedNumber,
            selectedNumber: selectedNumer
        )
    }

    /// 実際に計算するメソッド
    /// - Parameters:
    ///   - type: 四則演算の計算タイプ
    ///   - calculatedNumber: 計算された後の数値
    ///   - selectedNumber: ボタンが押された時の値(数値or記号)
    private func calculate(
        type: CalculateType,
        calculatedNumber: inout Int,
        selectedNumber: Int
    ) {
        if calculatedNumber == 0 {
            calculatedNumber = selectedNumber
            return
        }

        switch type {
        case .addition:
            calculatedNumber += selectedNumber

        case .subtraction:
            calculatedNumber -= selectedNumber

        case .division:
            calculatedNumber /= selectedNumber

        case .multiplication:
            calculatedNumber *= selectedNumber

        default:
            break
        }
    }
}
