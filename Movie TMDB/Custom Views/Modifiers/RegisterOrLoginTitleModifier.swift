//
//  RegisterOrLoginTitleModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct RegisterOrLoginTitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.medium)
            .foregroundStyle(.primary)
    }
}

extension View{
    func registerOrTitleStyle() -> some View{
        self.modifier(RegisterOrLoginTitleModifier())
    }
}
