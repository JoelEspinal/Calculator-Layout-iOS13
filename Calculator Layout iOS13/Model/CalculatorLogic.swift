//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by Joel Espinal (JoelEspinal) on 22/4/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermidateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(_ symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "+":
                intermidateCalculation = (n1: n, calcMethod: symbol)
            case "=":
                return performTwoNumCalculation(n2: n)
            default:
                intermidateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        
        return nil
    }

    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        if let n1 = intermidateCalculation?.n1, let operation = intermidateCalculation?.calcMethod {
            
            switch operation {
            case  "+":
                return n1 + n2
                
            case  "-":
                return n1 - n2
                
            case  "×":
                return n1 * n2
                
            case  "÷":
                return n1 / n2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
        }
        
        return nil
    }
}
