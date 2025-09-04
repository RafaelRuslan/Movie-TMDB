//
//  SocialWebModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SocialWebModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 50, height: 50)
            .background(
                Color.gray.opacity(0.07)
                    .frame(width: 100, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            )
            .padding(.top, 20)
    }
}

extension View{
    func socialityStyle() -> some View{
        self.modifier(SocialWebModifier())
    }
}
