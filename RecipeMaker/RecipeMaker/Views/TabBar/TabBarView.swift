//
//  TabBarView.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            FindRecipesView(viewModel: .init())
                .tabItem {
                    Image("tab_find_recipes")
                        .renderingMode(.template)
                    Text("Find Recipes")
                }
                .tag(0)
            
            FoodContentView(viewModel: .init())
                .tabItem {
                    Image("tab_food_content")
                        .renderingMode(.template)
                    Text("Food Content")
                }
                .tag(1)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
