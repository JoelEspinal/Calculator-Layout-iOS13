//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    private var isFinnishedTypingNumer: Bool = false
    
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label to Double.")
            }
             
            return number
        }
        
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBOutlet weak var displayLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    var calculator = CalculatorLogic()
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinnishedTypingNumer = true
      
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            
            guard let result = calculator.calculate(calcMethod) else {
                fatalError("The result of the calculation is nil")
            }
            
            displayValue = result
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numbValue = sender.currentTitle {
            if isFinnishedTypingNumer {
                displayLabel.text = numbValue
                isFinnishedTypingNumer = false
            } else {
                if numbValue == "." {
                    if displayLabel.text!.contains(".") &&  numbValue == "." {
                       return
                   }
                    
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
            
                if displayLabel.text == "0" && numbValue == "0" {
                    displayLabel.text = "0"
                }
                
                else if displayLabel.text == "0" && numbValue == "." {
                    displayLabel.text = "0."
                }
                
                else {
                    displayLabel.text = displayLabel.text! + numbValue
                }
            
            }
        }
        
//        if let displayText = displayLabel.text {
//            if let numValue = sender.currentTitle {
//                if isFinnishedTypingNumer {
//                    if displayLabel.text == "0" {
//                        displayLabel.text = "\(numValue)"
//                    } else {
//                        displayLabel.text = displayLabel.text! + numValue
//                    }
//                    
//                    isFinnishedTypingNumer = false
//                } else {
//                    print("hello hello")
//                    displayLabel.text = numValue
//                }
//            
//            }
//        }
        
        
    }
}

