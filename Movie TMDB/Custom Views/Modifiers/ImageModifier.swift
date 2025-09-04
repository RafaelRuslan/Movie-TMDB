//
//  ImageModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 10.09.25.
//

import SwiftUI

struct ImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
            .shadow(radius: 5)
    }
}

extension View{
    func imageStyle() -> some View{
        self.modifier(ImageModifier())
    }
}
