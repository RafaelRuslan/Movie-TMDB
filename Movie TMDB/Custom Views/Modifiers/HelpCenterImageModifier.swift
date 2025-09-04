//
//  HelpCenterImageModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct HelpCenterImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 30, height: 30)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}

extension View{
    func helpImageStyle() -> some View{
        self.modifier(HelpCenterImageModifier())
    }
}

