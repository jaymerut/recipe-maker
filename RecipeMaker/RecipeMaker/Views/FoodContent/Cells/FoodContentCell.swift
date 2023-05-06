//
//  FoodContentCell.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct FoodContentCell: View {
    @ObservedObject var item: FoodContentItem
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(15)
        }
        
    }
}

struct FoodContentCell_Previews: PreviewProvider {
    static var previews: some View {
        FoodContentCell(item: .init(name: "Test"))
    }
}
