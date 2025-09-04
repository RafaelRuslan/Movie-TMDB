//
//  SearchImageSeeAllModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 19.09.25.
//

import SwiftUI

struct SearchImageSeeAllModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .foregroundStyle(.primary)
            .frame(width: 30, height: 30)
    }
}

extension View{
    func searchImageStyle() -> some View{
        self.modifier(SearchImageSeeAllModifier())
    }
}
