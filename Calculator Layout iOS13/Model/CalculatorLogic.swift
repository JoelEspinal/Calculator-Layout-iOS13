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
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(_ symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n * 0.01
            } else if symbol == "+" {
                
            } else if symbol == "=" {
                
            }
        }
        return nil
    }
}

