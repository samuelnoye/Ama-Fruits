//
//  FruitModel.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 09/12/2021.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String 
    var image: String
    var gradientColors: [Color]
    var decribtion: String
    var nutrition: [String]
    
}

