//
//  FruitsCardView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 08/12/2021.
//

import SwiftUI

struct FruitsCardView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            
            VStack(spacing: 20){
                //Fruits: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green:0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            
            //Fruits: Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
            //Fruits: Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
            //Button: Start
                StartButtonView()
            }//: VStack
        }//: ZSTACK
        .onAppear{withAnimation(.easeOut(duration: 0.5)){
            isAnimating = true
         }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)

//        .cornerRadius(20)
//        .padding(.horizontal, 20)
    }
}
//MARK: - PREVIEW
struct FruitsCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCardView(fruit: fruitData[6])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
