//
//  VoteAverageModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 19.09.25.
//

import SwiftUI

struct VoteAverageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .background(
                Color.red
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            )
            .padding(.top, 10)
            .padding(.leading, 15)
    }
}

extension View{
    func averageStyle() -> some View{
        self.modifier(VoteAverageModifier())
    }
}
