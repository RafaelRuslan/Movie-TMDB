//
//  SocialWebBackgroundModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SocialWebBackgroundModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .background(
                Color.gray.opacity(0.08)
                    .frame(width: 400, height: 50)
                
            )
    }
}

extension View{
    func backgroundSocialStyle() -> some View{
        self.modifier(SocialWebBackgroundModifier())
    }
}
