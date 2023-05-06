//
//  FoodContentView.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct FoodContentView: View {

    @ObservedObject var viewModel: ViewModel
    @State var textValue: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Food Content")
            HStack(alignment: .center) {
                Text("Enter what you've eaten to see the nutrient facts.")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
            }
            .padding(.top, 5)
            ZStack(alignment: .trailing) {
                TextField("e.g (eggs and toast)", text: $textValue)
                    .textFieldStyle(.plain)
                    .padding(10)
                    .padding(.leading, 4)
                    .accentColor(.black)
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black, lineWidth: 1))
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
                ForEach(viewModel.foods) { item in
                    Section {
                        FoodContentCell(item: item)
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

struct FoodContentView_Previews: PreviewProvider {
    static var previews: some View {
        FoodContentView(viewModel: .init())
    }
}
