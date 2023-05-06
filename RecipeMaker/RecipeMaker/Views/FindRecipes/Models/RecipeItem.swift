//
//  RecipeItem.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import Foundation

class RecipeItem: ObservableObject, Identifiable {
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
}
