//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isFinnishedTypingNumer: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinnishedTypingNumer = true
        print("AAA")
    }
    
    //
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
       
            if let numValue = sender.currentTitle {
                if isFinnishedTypingNumer {
                    displayLabel.text = numValue
                    isFinnishedTypingNumer = false
                } else {
                    displayLabel.text = displayLabel.text! + numValue
                }
            }
    }
}
