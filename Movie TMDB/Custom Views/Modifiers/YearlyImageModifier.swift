//
//  YearlyImageModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct YearlyImageModifier: ViewModifier{
    @AppStorage("colorScheme") private var colorScheme = false
    
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundStyle(colorScheme ? .blue : .red)
    }
}

extension View{
    func yearlyImageStyle() -> some View{
        self.modifier(YearlyImageModifier())
    }
}
