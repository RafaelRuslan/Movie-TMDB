//
//  YearlyMonthlyModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct YearlyMonthlyModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .bold()
            .foregroundStyle(.primary)
    }
}

extension View{
    func yearlyMontlyModify() -> some View{
        self.modifier(YearlyMonthlyModifier())
    }
}
