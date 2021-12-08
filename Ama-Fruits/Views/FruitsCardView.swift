//
//  FruitsCardView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 08/12/2021.
//

import SwiftUI

struct FruitsCardView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            
            VStack(spacing: 20){
                //Fruits: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green:0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            }
            //Fruits: Title
            Text("Blueberry")
            //Fruits: Headline
            //Button: Start
            
        }//: ZSTACK
    }
}
//MARK: - PREVIEW
struct FruitsCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
