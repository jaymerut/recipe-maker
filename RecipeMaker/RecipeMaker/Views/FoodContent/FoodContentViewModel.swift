//
//  FoodContentViewModel.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import Foundation

extension FoodContentView {
    class ViewModel: ObservableObject {
        var foods: [FoodContentItem] = [FoodContentItem]()
        
        init() {
            self.foods = [
                FoodContentItem(name: "First"),
                FoodContentItem(name: "Second")
            ]
        }
    }
}
