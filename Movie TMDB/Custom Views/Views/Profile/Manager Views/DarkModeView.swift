//
//  DarkModeView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct DarkModeView: View {
    
    @EnvironmentObject private var langVM: LanguageManager
    @AppStorage("colorScheme") private var colorScheme = false
    
    var body: some View {
        Image(
            systemName:
                colorScheme ? "moon" : "sun.max.fill"
        )
        .foregroundStyle(
            colorScheme ? .blue : .yellow
        )
        Text(
            L10n.darkMode(langVM.selectedLanguage)
        )
        .font(.title2)
        .foregroundStyle(.primary)
        Spacer()
        Toggle(
            "",
            isOn: $colorScheme
        )
        .padding(.leading, 5)
        .preferredColorScheme(
            colorScheme ? .dark : .light
        )
        .foregroundStyle(.primary)
    }
}

#Preview {
    DarkModeView()
        .environmentObject(LanguageManager())
}
