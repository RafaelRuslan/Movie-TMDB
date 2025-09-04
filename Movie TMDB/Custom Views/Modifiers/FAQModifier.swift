//
//  FAQModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct FAQModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 7)
            .padding(.trailing, 20)
            .foregroundStyle(.primary)
    }
}

extension View{
    func faqStyle() -> some View{
        self.modifier(FAQModifier())
    }
}
