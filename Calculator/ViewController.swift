//
//  ViewController.swift
//  Calculator
//
//  Created by Sam Lee on 10/10/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInMiddleOfTyping = false

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            
        }
        userIsInMiddleOfTyping = true
    }

    

}

