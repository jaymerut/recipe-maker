//
//  FindRecipesView.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct FindRecipesView: View {

    @ObservedObject var viewModel: ViewModel
    @State var textValue: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Find Recipes")
            HStack(alignment: .center) {
                Label("Keywords", image: "")
                    .padding(.leading, -7)
                Spacer()
            }
            TextField("Enter one or more keywords", text: $textValue)
                .textFieldStyle(.roundedBorder)
                .padding(4)
                .padding(.leading, 4)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1)
                         )
            
            Spacer()
        }
        .padding(.vertical, 30)
        .padding(.horizontal, 20)
    }
}

struct FindRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        FindRecipesView(viewModel: .init())
    }
}
