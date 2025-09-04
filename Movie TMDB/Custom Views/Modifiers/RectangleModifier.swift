//
//  RectangleModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//

import SwiftUI

struct RectangleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 430, height: 170)
            .foregroundStyle(.gray.opacity(0.27))
            .background(
                Color.white
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View{
    func rectStyle() -> some View {
        self.modifier(RectangleModifier())
    }
}
