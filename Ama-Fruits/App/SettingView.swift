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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                        Divider()
                            .padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have chelesterol. fruits are sources of mnay essential nutrients, including potassium, dietary fiber, vitramins, and much more.")
                                .font(.footnote)
                        }
                    }
                   //MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labeltext: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by the toggle switch in this bax. That way it satrts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding { 
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    
                   //MARK: - SECTION 3
                    GroupBox(
                        label: SettingsLabelView(labeltext: "Application", labelImage: "apps.iphone")
                          )
                    {
                        
                        SettingsRowView(name: "Developer", content: "John / June")
                        SettingsRowView(name: "Designer", content: "Samuel Noye")
                       // SettingsRowView(name: "Compatibility", content: "IOS 14")
                        
                        SettingsRowView(name: "Website", linkLabel: "Portfolio", linkDestination: "http://noyesamuel.netlify.app")
                        SettingsRowView(name: "Twitter", linkLabel: "@samilaxy", linkDestination: "twitter.com/samilaxy")
                        SettingsRowView(name: "SwiftUi", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }//: Box
                    
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
