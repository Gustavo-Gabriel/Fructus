//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Gustavo Anjos on 01/02/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikepedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//: HSTACK
            .font(.footnote)
        }//: GROUP
    }
}

// MARK: - PREVIEW

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
