//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle, var displayText = displayLabel.text {
            if displayText != "0" {
                displayText = displayText + "\(numValue)"
            } else {
                displayText = numValue
            }
            
            displayLabel.text = displayText
        }
    }
    
}

