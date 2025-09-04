//
//  PaymentCVVModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct PaymentCVVModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .keyboardType(.numberPad)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 80)
    }
}

extension View{
    func cvvStyle() -> some View{
        self.modifier(PaymentCVVModifier())
    }
}
