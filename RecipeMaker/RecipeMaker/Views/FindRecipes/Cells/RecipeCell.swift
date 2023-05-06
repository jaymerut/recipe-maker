//
//  RecipeCell.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct RecipeCell: View {
    @ObservedObject var item: RecipeItem
    
    var body: some View {
        ZStack {
            /*RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)*/
            VStack(alignment: .leading) {
                Text(item.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(15)
        }
        
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(item: .init(name: "Test"))
    }
}
