//
//  GirlPicModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct GirlPicModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 200, height: 200)
            .padding(.top, 50)
    }
}

extension View{
    func girlStyle() -> some View{
        self.modifier(GirlPicModifier())
    }
}
