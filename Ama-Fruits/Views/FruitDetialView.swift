//
//  FruitDetialView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 09/12/2021.
//

import SwiftUI

struct FruitDetialView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    //MARK: - BODY

    var body: some View {
        Text(fruit.title)
    }
}

  //MARK: - PREVIEW
struct FruitDetialView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetialView(fruit: fruitData[0])
    }
}
