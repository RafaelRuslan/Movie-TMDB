//
//  ItemAnswerPadding.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct ItemAnswerPadding: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

extension View{
    func itemPadding() -> some View{
        self.modifier(ItemAnswerPadding())
    }
}
