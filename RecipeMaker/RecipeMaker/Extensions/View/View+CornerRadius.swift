//
//  View+CornerRadius.swift
//  RecipeMaker
//
//  Created by Jayme Rutkoski on 5/6/23.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
