//
//  PaymentModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct PaymentModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }
}

extension View{
    func payMentModifyStyle() -> some View{
        self.modifier(PaymentModifier())
    }
}
