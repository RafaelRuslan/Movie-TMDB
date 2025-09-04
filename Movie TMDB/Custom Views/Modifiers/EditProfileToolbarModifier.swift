//
//  EditProfileToolbarModifier.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct EditProfileToolbarModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.medium)
            .foregroundStyle(.primary)
    }
}


