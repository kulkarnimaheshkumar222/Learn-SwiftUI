//
//  Constants.swift
//  Slot-Machine
//
//  Created by Mahesh Kulkarni on 31/08/22.
//

import Foundation

enum ImageView {
    case sunshine
    case fire
    
    var name: String {
        switch self {
        case .sunshine:
            return "sunshine"
        case .fire:
            return "fire"
        }
    }
}
