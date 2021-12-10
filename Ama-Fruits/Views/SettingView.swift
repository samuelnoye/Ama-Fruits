//
//  SettingView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 10/12/2021.
//

import SwiftUI

struct SettingView: View {
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(){
                VStack(spacing: 20) {
                    Text("Settings")
                }//: Vstack
                .navigationTitle(Text("Settings"))
                .padding()
            }//: scroll
        }//: navigation
    }
}
    //MARK: - PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
