//
//  ContentView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 08/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitData
    @State private var isShowSetting: Bool = false
     
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetialView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                 Button(action:{
                  isShowSetting = true
            }){
                Image(systemName: "slider.horizontal.3")
              } //: BUTTON
            )
        }//: NAVIGATION
    }
}
    //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            
    }
}
