//
//  StartButtonView.swift
//  Fructus
//
//  Created by Nickelfox on 13/12/23.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    var body: some View {
        Button(action: {
            isOnBoarding = false
            print("Exit")
        }){
            HStack(spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View{
        StartButtonView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .previewLayout(.sizeThatFits)
    }
}
