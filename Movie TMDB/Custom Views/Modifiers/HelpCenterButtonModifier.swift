//
//  HelpCenterButtonModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 12.09.25.
//

import SwiftUI

struct HelpCenterButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(12)
    }
}

extension View{
    func buttonStyle() -> some View{
        self.modifier(HelpCenterButtonModifier())
    }
}
