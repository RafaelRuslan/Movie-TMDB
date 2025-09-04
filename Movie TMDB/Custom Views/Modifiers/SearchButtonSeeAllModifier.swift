//
//  SearchButtonSeeAllModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 19.09.25.
//

import SwiftUI

struct SearchButtonSeeAllModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(10)
            .foregroundStyle(.primary)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
    }
}

extension View{
    func searchSeeAllStyle() -> some View{
        self.modifier(SearchButtonSeeAllModifier())
    }
}
