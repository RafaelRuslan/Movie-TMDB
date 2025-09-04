//
//  ItemAnswerModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct ItemAnswerModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .foregroundStyle(.gray)
            .padding(.top, 4)
    }
}

extension View{
    func answerStyle() -> some View{
        self.modifier(ItemAnswerModifier())
    }
}
