//
//  PlayButtonModify.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 20.09.25.
//

import SwiftUI

struct PlayButtonModify: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding(8)
            .background(Color.red)
            .clipShape(Circle())
    }
}

extension View{
    func plyStyle() -> some View{
        self.modifier(PlayButtonModify())
    }
}
