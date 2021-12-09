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

    //MARK: - BOBY
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FruitsCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
