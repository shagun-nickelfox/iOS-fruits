//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Nickelfox on 14/12/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View{
        SettingsLabelView(labelText: "Fructus",labelImage: "info.circle")
    }
}
