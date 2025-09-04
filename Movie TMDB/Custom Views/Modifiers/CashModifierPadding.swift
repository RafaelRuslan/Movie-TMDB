//
//  CashModifierPadding.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct CashModifierPadding: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(.ultraThinMaterial)
                    .frame(maxWidth: 350)
            )
            .padding()
    }
}

extension View{
    func cashStyle() -> some View{
        self.modifier(CashModifierPadding())
    }
}
