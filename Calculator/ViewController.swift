//
//  ViewController.swift
//  Calculator
//
//  Created by Nurzhan on 05.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelNumberShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //For new operations
    var newOperation = true
    
    func addNumbersToInpit(number: String){
        var textNumber =
        String( LabelNumberShow.text!)
        if newOperation  {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        LabelNumberShow.text = textNumber
    }
    
    @IBAction func btn0(_ sender: Any) {
        addNumbersToInpit(number: "0")
    }
    
    @IBAction func btnDot(_ sender: Any) {
        addNumbersToInpit(number: ".")
    }
    
    @IBAction func btn1(_ sender: Any) {
        addNumbersToInpit(number: "1")
    }
    
    @IBAction func btn2(_ sender: Any) {
        addNumbersToInpit(number: "2")
    }
    
    @IBAction func btn3(_ sender: Any) {
        addNumbersToInpit(number: "3")
    }
    
    @IBAction func btn4(_ sender: Any) {
        addNumbersToInpit(number: "4")
    }
    
    @IBAction func btn5(_ sender: Any) {
        addNumbersToInpit(number: "5")
    }
    
    @IBAction func btn6(_ sender: Any) {
        addNumbersToInpit(number: "6")
    }
    
    @IBAction func btn7(_ sender: Any) {
        addNumbersToInpit(number: "7")
    }
    
    @IBAction func btn8(_ sender: Any) {
        addNumbersToInpit(number: "8")
    }
    
    @IBAction func btn9(_ sender: Any) {
        addNumbersToInpit(number: "9")
    }
    
    var operations = "+"
    var number1: Double?
    
    
    @IBAction func btnDivide(_ sender: Any) {
        operations = "/"
        number1 = Double(LabelNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnMultiplication(_ sender: Any) {
        operations = "*"
        number1 = Double(LabelNumberShow.text!)!
        newOperation = true
    }
    
    
    @IBAction func btnMinus(_ sender: Any) {
        operations = "-"
        number1 = Double(LabelNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        operations = "+"
        number1 = Double(LabelNumberShow.text!)
        newOperation = true
    }
    
    
    @IBAction func btnAc(_ sender: Any) {
        LabelNumberShow.text = "0"
        newOperation = true
    }
    
    @IBAction func btnPlusOrMinus(_ sender: Any) {
        var textNumber = String(LabelNumberShow.text!)
        textNumber = "-" + textNumber
        LabelNumberShow.text = textNumber
    }
    
    @IBAction func btnPercent(_ sender: Any) {
        var number1 = Double(LabelNumberShow.text!)
        number1 = number1!/100.0
        LabelNumberShow.text = String(number1!)
        newOperation = true
    }
    
    @IBAction func btnEqual(_ sender: Any) {
        let number2 = Double(LabelNumberShow.text!)
        var results: Double?
        
        switch operations {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        LabelNumberShow.text = String(results!)
        newOperation = true
    }
    
}

