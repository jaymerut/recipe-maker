//
//  FoodContentView.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct FoodContentView: View {

    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Food Content")
        }
    }
}

struct FoodContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodContentView(viewModel: .init())
    }
}