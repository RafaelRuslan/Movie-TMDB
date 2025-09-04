//
//  PINOrPasswordChange.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct PINOrPasswordChange: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.red)
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(
                Color.red.opacity(0.23)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View{
    func pinOrPasswordStyle() -> some View{
        self.modifier(PINOrPasswordChange())
    }
}
