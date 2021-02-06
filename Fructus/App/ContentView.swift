//
//  ContentView.swift
//  Fructus
//
//  Created by Gustavo Anjos on 30/01/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }
            )
        }//: NAVIGATION
    }
}

//MARK: PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
