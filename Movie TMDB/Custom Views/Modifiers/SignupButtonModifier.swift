//
//  SignupButtonModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SignupButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .bold()
            .foregroundStyle(.white)
            .background(
                Color.red.mix(with: .black, by: 0.18)
                    .frame(width: 350, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            )
            .padding(.top, 30)
    }
}

extension View{
    func signupButtonStyle() -> some View{
        self.modifier(SignupButtonModifier())
    }
}
