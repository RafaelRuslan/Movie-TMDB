//
//  LoginPicModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 26.09.25.
//

import SwiftUI

struct LoginPicModifier: ViewModifier{
    @AppStorage("colorScheme") private var colorScheme = false
    
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 200, height: 200)
            .background(
                Color(colorScheme ? .black : .white)
                    .frame(width: 250, height: 250)
            )
    }
}

extension View{
    func loginPicStyle() -> some View{
        self.modifier(LoginPicModifier())
    }
}
