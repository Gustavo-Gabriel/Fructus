//
//  SettingsView.swift
//  Fructus
//
//  Created by Gustavo Anjos on 06/02/21.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            HStack{
                                Text("Fructus".uppercased())
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Image(systemName: "info.circle")
                            }
                    ) {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    }
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                    
                }//: VSTACK
            }//: SCROLL
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(
                trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
            )
            .padding()
        }//: NAVIGATION
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
