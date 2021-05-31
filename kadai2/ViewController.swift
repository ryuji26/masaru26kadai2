//
//  ViewController.swift
//  kadai2
//
//  Created by 髙橋　竜治 on 2021/05/29.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var label: UILabel!

    @IBAction func calculate(_ sender: Any) {
        //textFieldの型を変換
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0

        let resultText: String

        //計算してlabelに表示
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultText = String(number1 + number2)
        case 1:
            resultText = String(number1 - number2)
        case 2:
            resultText = String(number1 * number2)
        case 3:
            if number2 == 0 {
                resultText = "割る数には0以外を入力してください"
            } else {
                resultText = String(number1 / number2)
            }
        default:
            return
        }

        label.text = resultText
    }
}
