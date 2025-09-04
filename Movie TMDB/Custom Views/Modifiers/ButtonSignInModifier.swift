//
//  ButtonSignInModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct ButtonSignInModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .bold()
            .foregroundStyle(.red)
            .padding(.top, 20)
    }
}

extension View{
    func signInStyle() -> some View{
        self.modifier(ButtonSignInModifier())
    }
}
