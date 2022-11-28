//
//  ViewController.swift
//  Assignment 3 My First App
//
//  Created by Cambrian on 2022-11-21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var displayResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var startInput = true
    func AddNumberToLabel(number:String){
        var inputNumber = String(displayResult.text!)
        if startInput{
            inputNumber = ""
            startInput = false
        }
        inputNumber = inputNumber + number
        displayResult.text = inputNumber
    }
    
    @IBAction func button0(_ sender: Any) {
        AddNumberToLabel(number: "0")
    }
    
    @IBAction func bottonDot(_ sender: Any) {
        AddNumberToLabel(number: ".")
    }
    
    @IBAction func button1(_ sender: Any) {
        AddNumberToLabel(number: "1")
    }
    
    @IBAction func button2(_ sender: Any) {
        AddNumberToLabel(number: "2")
    }
    
    @IBAction func button3(_ sender: Any) {
        AddNumberToLabel(number: "3")
    }
    
    @IBAction func button4(_ sender: Any) {
        AddNumberToLabel(number: "4")
    }
    
    @IBAction func button5(_ sender: Any) {
        AddNumberToLabel(number: "5")
    }
    
    @IBAction func button6(_ sender: Any) {
        AddNumberToLabel(number: "6")
    }
    
    @IBAction func button7(_ sender: Any) {
        AddNumberToLabel(number: "7")
    }
    
    @IBAction func button8(_ sender: Any) {
        AddNumberToLabel(number: "8")
    }
    
    @IBAction func button9(_ sender: Any) {
        AddNumberToLabel(number: "9")
    }
    var operation = "+"
    var firstNumber:Double?
    var secondNumber: Double?
    var finalResult: Double?
    var numberForPlusMinus: String?
  
    
    @IBAction func clear(_ sender: UIButton) {
        displayResult.text = "0"
        startInput = true
    }
    
    @IBAction func plusMinus(_ sender: UIButton) {
        numberForPlusMinus = String(displayResult.text!)
        numberForPlusMinus = "-" + numberForPlusMinus!
        displayResult.text = numberForPlusMinus!
        startInput = false
     
    }
    @IBAction func modulo(_ sender: UIButton) {
        firstNumber = Double(displayResult.text!)
        firstNumber = firstNumber!/100
        displayResult.text = String(firstNumber!)
        startInput = true
    }
    
    @IBAction func division(_ sender: UIButton) {
        operation = "/"
        firstNumber = Double(displayResult.text!)
        startInput = true
    }
    @IBAction func buttonMultlipication(_ sender: UIButton) {
        operation = "*"
        firstNumber = Double(displayResult.text!)
        startInput = true
    }
    
    
    @IBAction func bottonAddition(_ sender: UIButton) {
        operation = "+"
        firstNumber = Double(displayResult.text!)
        startInput = true
      
    }
    
   var invalid = false
    
    @IBAction func buttonSubtraction(_ sender: UIButton) {
        operation = "-"
        firstNumber = Double(displayResult.text!)
        startInput = true
    }
    
  
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        secondNumber = Double(displayResult.text!)
        if(secondNumber==nil){
            displayResult.text = "NA"
        }
        
        switch operation{
        case "*":
            finalResult = firstNumber! * secondNumber!
        case "/":
            if(secondNumber==0){
                invalid = true
                startInput = true
            }
            else{
                finalResult = firstNumber! / secondNumber!
                
            }
            
            
            
        case "-":
            finalResult = firstNumber! - secondNumber!
        case "+":
            finalResult = firstNumber! + secondNumber!
            
        default:
            finalResult = 0
        }
        if(invalid){
            displayResult.text = "NA"
            invalid = false
        }
        else{
            displayResult.text = String(finalResult!)
            startInput = true
        }
    }
}



