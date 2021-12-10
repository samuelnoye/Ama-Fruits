//
//  FruitsHeaderView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 10/12/2021.
//

import SwiftUI

struct FruitsHeaderView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 0, x: 6, y: 8)
                .padding(.vertical, 20)
        }
        .frame(height: 440)
    }
}

   //MARK: - PREVIEW
struct FruitsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsHeaderView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
