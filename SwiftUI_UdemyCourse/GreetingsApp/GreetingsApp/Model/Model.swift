//
//  Model.swift
//  GreetingsApp
//
//  Created by Mahesh Kulkarni on 07/01/23.
//

import Foundation
import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
