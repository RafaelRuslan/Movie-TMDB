//
//  TextAlreadyModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct TextAlreadyModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .bold()
            .foregroundStyle(.gray)
            .padding(.top, 20)
    }
}

extension View{
    func alreadyStyle() -> some View{
        self.modifier(TextAlreadyModifier())
    }
}
