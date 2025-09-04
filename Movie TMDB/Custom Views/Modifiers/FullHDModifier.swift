//
//  FullHDModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI


struct FullHDModifier: ViewModifier{
    @AppStorage("colorScheme") private var colorScheme = false
    
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundStyle(colorScheme ? .blue : .black)
    }
}

extension View{
    func hdStyle() -> some View{
        self.modifier(FullHDModifier())
    }
}
