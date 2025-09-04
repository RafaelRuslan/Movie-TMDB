//
//  PaymentExpiryDateModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct PaymentExpiryDateModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .keyboardType(.numbersAndPunctuation)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

extension View{
    func expiryStyle() -> some View{
        self.modifier(PaymentExpiryDateModifier())
    }
}
