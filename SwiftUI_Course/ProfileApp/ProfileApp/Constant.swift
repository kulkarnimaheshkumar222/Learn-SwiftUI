//
//  Constant.swift
//  ProfileApp
//
//  Created by Mahesh Kulkarni on 31/08/22.
//

import Foundation

enum ImageView {
    case background
    case userImg
    case heart
    case network
    case message
    case phone
    
    var name: String {
        switch self {
        case .background:
            return "background"
        case .userImg:
            return "userImg"
        case .heart:
            return "heart.circle"
        case .network:
            return "network"
        case .message:
            return "message.circle"
        case .phone:
            return "phone.circle"
        }
    }
}

struct LabelConstants {
    static let yourNameLbl = "Mahesh Kulkarni"
    static let abtyouLbl = "About Me"
    static let jobTitleLbl = "iOS Developer (3+ years of Experience)"
    static let description = "I am iOS Developer having 3+ years of experience in iOS development, I have good knowledge of developing apps in Swift now I am learning SwiftUI."
}
