//
//  ExploreTabbarModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 18.09.25.
//

import SwiftUI

struct ExploreTabbarModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .padding(.leading, 5)
            .foregroundStyle(.red.opacity(0.79))
            .background(
                Color.red.opacity(0.14)
                    .frame(width: 60, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            )
    }
}

extension View{
    func filterTabStyle() -> some View{
        self.modifier(ExploreTabbarModifier())
    }
}
