//
//  TextPremiumZoneModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//


import SwiftUI

struct TextPremiumZoneModifier: ViewModifier{
    
    @AppStorage("colorScheme") private var colorScheme = false
    func body(content: Content) -> some View {
        content
            .font(.title)
            .bold()
            .foregroundStyle(colorScheme ? .blue : .red)
    }
}

extension View{
    func premiumTextStyle() -> some View{
        self.modifier(TextPremiumZoneModifier())
    }
}
