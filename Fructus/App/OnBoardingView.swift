//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Nickelfox on 13/12/23.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitsCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View{
        OnBoardingView(fruits: fruitsData)
    }
}
