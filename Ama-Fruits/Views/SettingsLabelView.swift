//
//  SettingsLabelView.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 10/12/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    var labeltext: String
    var labelImage: String
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labeltext.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
    
   //MARK: - PERVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labeltext: "Fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
