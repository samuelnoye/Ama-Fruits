//
//  SettingsRowView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 10/12/2021.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Text(name).foregroundColor(Color.gray)
            Spacer()
            Text(content)
        }
    }
}
  
    //MARK: - PREVEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / june")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
