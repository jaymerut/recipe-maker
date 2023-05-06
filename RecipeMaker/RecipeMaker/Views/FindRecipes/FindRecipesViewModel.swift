//
//  FindRecipesViewModel.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import Foundation

extension FindRecipesView {
    class ViewModel: ObservableObject {
        var recipes: [RecipeItem] = [RecipeItem]()
        
        init() {
            self.recipes = [
                RecipeItem(name: "First"),
                RecipeItem(name: "Second")
            ]
        }
    }
}
