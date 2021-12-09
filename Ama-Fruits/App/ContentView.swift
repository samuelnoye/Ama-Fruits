//
//  ContentView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 08/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruit: [Fruit] = fruitData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit){item in
                    FruitRowView(fruit: item)
                }
            }
        }
    
       
    }
}
    //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
            .previewDevice("iPhone 11 Pro")
    }
}
