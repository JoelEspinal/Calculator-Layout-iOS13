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
    
    @IBOutlet weak var displayLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinnishedTypingNumer = true
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numbValue = sender.currentTitle {
            if isFinnishedTypingNumer {
                displayLabel.text = numbValue
                isFinnishedTypingNumer = false
            } else {
                displayLabel.text = displayLabel.text! + numbValue
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
