//
//  SearchTextfieldModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SearchTextfieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal, 16)
            .padding(.top, 45)
    }
}

extension View{
    func searchTextfieldStyle() -> some View{
        self.modifier(SearchTextfieldModifier())
    }
}
