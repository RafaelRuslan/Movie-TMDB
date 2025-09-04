//
//  PlayButtonModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct PlayButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View{
    func playStyle() -> some View{
        self.modifier(PlayButtonModifier())
    }
}
