//
//  TabBarView.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = "One"

    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Page 1")
                .tabItem {
                    Image(systemName: "circle")
                    Text("One")
                }
            
            Text("Page 2")
                .tabItem {
                    Image(systemName: "circle")
                    Text("Two")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
