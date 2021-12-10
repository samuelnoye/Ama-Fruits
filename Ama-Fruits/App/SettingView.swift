//
//  SettingView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 10/12/2021.
//

import SwiftUI

struct SettingView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                   //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labeltext: "Ama Fruits", labelImage: "info.circle")
                                )
                    {
                        Text("")
                    }
                   //MARK: - SECTION 2
                    
                   //MARK: - SECTION 2
                    
                }//: Vstack
                .navigationTitle(Text("Settings"))
                .navigationBarItems(
                    trailing:
                        Button(action:{
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
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
