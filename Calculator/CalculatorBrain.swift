//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Sam Lee on 10/13/16.
//  Copyright © 2016 Sam Lee. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private var accumulator = 0.0
    
    func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            accumulator = M_PI
        case "√":
            accumulator = sqrt(accumulator)
        default:
            break
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}
