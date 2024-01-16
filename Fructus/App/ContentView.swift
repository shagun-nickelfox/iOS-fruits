//
//  ContentView.swift
//  Fructus
//
//  Created by Nickelfox on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var fruit: [Fruit] = fruitsData
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSheet = true
            }){
                Image(systemName: "slider.horizontal.3")
            }).sheet(isPresented: $isShowingSheet){
                SettingsView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView(fruit: fruitsData)
    }
}
