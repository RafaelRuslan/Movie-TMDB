//
//  PayButtonModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct PayButtonModifier: ViewModifier{
    @AppStorage("colorScheme") private var colorScheme = false
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .padding()
            .background(colorScheme ? .red : .blue)
            .foregroundColor(colorScheme ? .black : .white)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

extension View{
    func payButtonStyle() -> some View{
        self.modifier(PayButtonModifier())
    }
}
