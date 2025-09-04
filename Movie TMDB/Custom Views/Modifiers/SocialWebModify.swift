//
//  SocialWebModify.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SocialWebModify: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 30, height: 30)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

extension View{
    func socialStyle() -> some View{
        self.modifier(SocialWebModify())
    }
}
