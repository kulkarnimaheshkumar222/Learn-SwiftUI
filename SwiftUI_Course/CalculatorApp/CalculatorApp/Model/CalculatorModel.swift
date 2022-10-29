//
//  CalculatorModel.swift
//  CalculatorApp
//
//  Created by Mahesh Kulkarni on 02/09/22.
//

import Foundation
import CoreText
import CoreVideo
import UIKit
import SwiftUI

enum Keys: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case substract = "-"
    case divide = "÷"
    case multiply = "x"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percentage = "%"
    case negative = "-/+"
    
    var buttonColor: Color {
        switch self {
        case .add , .substract, .multiply, .divide,.equal:
            return Color("VOperator")
        case .clear,.negative,.percentage:
            return Color("HOperator")
        default:
            return Color("num")
        }
    }
}

enum Operation {
    case add
    case subsctract
    case multiply
    case divide
    case none
}
