//
//  JoinPremiumModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//

import SwiftUI

struct JoinPremiumModifier: ViewModifier{
    
    @AppStorage("colorScheme") private var colorScheme = false
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.red)
            .bold()
            .font(.title)
            .foregroundStyle(colorScheme ? .blue : .red)
    }
}

extension View{
    func premiumStyle() -> some View{
        self.modifier(JoinPremiumModifier())
    }
}
