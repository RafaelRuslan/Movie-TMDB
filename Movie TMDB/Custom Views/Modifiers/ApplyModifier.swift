//
//  ApplyModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 26.09.25.
//

import SwiftUI

struct ApplyModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .bold()
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

extension View{
    func applyStyle() -> some View{
        self.modifier(ApplyModifier())
    }
}
