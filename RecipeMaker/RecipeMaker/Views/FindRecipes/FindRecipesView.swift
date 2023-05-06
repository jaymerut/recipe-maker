//
//  FindRecipesView.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct FindRecipesView: View {

    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Find Recipes")
        }
    }
}

struct FindRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        FindRecipesView(viewModel: .init())
    }
}
