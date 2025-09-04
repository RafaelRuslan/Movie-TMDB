//
//  SearchButtonModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 19.09.25.
//

import SwiftUI

struct SearchButtonModifier: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 250)
            .padding(.horizontal, 10)
            .background(
                Color.gray
                    .frame(width: 100)
                    
            )
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

extension View{
    func searchStyle() -> some View{
        self.modifier(SearchButtonModifier())
    }
}
