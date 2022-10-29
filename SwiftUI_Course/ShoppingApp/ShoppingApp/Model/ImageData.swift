//
//  ImageData.swift
//  ShoppingApp
//
//  Created by Mahesh Kulkarni on 29/10/22.
//

import Foundation

struct FruitModel {
    var id: Int
    var title: FruitTitle
    var image: String
    var price: String
    var color: String
}

enum FruitTitle: String {
        
    case apple
    case apricot
    case avocado
    case banana
    case blackberry
    case cherry
    case dragonfruit
    case fig
    case grapes
    case kiwi
    case lemon
    case mango
    case muskmelon
    case orang
    case papaya
    case pear
    case pineapple
    case plum
    case raspberry
    case strawbery
    case watermelon
    
}
