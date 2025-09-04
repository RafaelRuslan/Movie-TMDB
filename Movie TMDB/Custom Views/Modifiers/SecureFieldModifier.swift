//
//  SecureFieldModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct SecureFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.leading, 15)
            .frame(height: 40)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .background(Color.gray.opacity(0.22))
            .overlay (
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.blue, lineWidth: 1)
            )
            .padding(.horizontal, 8)
    }
}

extension View{
    func securefieldModify() -> some View{
        self.modifier(TextFieldModifier())
    }
}
