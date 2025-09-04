//
//  MyListButtonModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct MyListButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(.white)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                Color.gray.opacity(0.7)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
        )
    }
}

extension View{
    func myListStyle() -> some View{
        self.modifier(MyListButtonModifier())
    }
}
