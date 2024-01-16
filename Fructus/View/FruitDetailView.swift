//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Nickelfox on 13/12/23.
//

import SwiftUI

struct FruitDetailView: View {
     
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View{
        FruitDetailView(fruit: fruitsData[0])
    }
}
