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
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack (alignment: .center, spacing: 20){
                    
                    // HEADER
                        FruitsHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                    // TITLE
                    Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                    // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                    
                    //NUTRIENTS
                      FruitNutrientsView(fruit: fruit)
                        
                        
                    //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                            
                        
                    //DESCRIBTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            
                        
                    //LINK
                      SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//:VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//:VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:Scroll
            .edgesIgnoringSafeArea(.top)
        }//: navigation
    }
}

  //MARK: - PREVIEW
struct FruitDetialView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetialView(fruit: fruitData[0])
    }
}
