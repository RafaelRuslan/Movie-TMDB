//
//  SignUpWithPasswordModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SignUpWithPasswordModifier: ViewModifier{
    @AppStorage("colorScheme") private var colorScheme = false
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .foregroundStyle(colorScheme ? .black : .white)
            .background(
                Color.red
                    .frame(width: 350, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
        )
    }
}

extension View{
    func signupStyleModify() -> some View{
        self.modifier(SignUpWithPasswordModifier())
    }
}
