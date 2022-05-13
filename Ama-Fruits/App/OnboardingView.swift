//
//  OnboardingView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 09/12/2021.
//

import SwiftUI
//MARK: - PROPERTIES
struct OnboardingView: View {
    //MARK: - PROPERTIES

    var fruits: [Fruit] = fruitData
    
    //MARK: - BOBY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitsCardView(fruit: item)
                
            }//:LOOP
        }//:TAB
        .ignoresSafeArea(.all)
        .tabViewStyle(PageTabViewStyle())
        
        
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData )
    }
}
