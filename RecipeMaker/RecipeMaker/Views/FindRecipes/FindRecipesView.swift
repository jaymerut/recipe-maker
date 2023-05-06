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
            ZStack(alignment: .trailing) {
                TextField("Enter one or more keywords", text: $textValue)
                    .textFieldStyle(.roundedBorder)
                    .padding(4)
                    .padding(.leading, 4)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1)
                             )
                Button {
                    print("Button Pressed")
                } label: {
                    Image("search")
                        .renderingMode(.template)
                        .resizable()
                        .padding(7)
                        .background(.green)
                        .foregroundColor(.white)
                        .frame(width: 39.0, height: 40.0)
                        .cornerRadius(8, corners: [.topRight, .bottomRight])
                }
            }
            
            List {
                ForEach(viewModel.recipes) { item in
                    Section {
                        RecipeCell(item: item)
                            .listRowInsets(.init(top: 5, leading: 0, bottom: 5, trailing: 0))
                            .listRowSeparator(.hidden)
                            .background(.blue)
                    }
                    .cornerRadius(8)
                }
            }
            .listStyle(PlainListStyle())
            .padding(.top, 10)
        }
        .padding(.top, 30)
        .padding(.horizontal, 20)
    }
}

struct FindRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        return FindRecipesView(viewModel: .init())
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
