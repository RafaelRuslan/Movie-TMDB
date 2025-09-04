//
//  ImageSytemNameModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct ImageSytemNameModifier: ViewModifier{
    @AppStorage("colorScheme") private var colorScheme = false
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50))
            .foregroundStyle(colorScheme ? .blue : .red)
    }
}

extension View{
    func imageSystemNameStyle() -> some View{
        self.modifier(ImageSytemNameModifier())
    }
}
