//
//  LogoutView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct LogoutView: View {
    @AppStorage("colorScheme") private var colorScheme = false
    @EnvironmentObject private var langVM: LanguageManager
    @EnvironmentObject private var loginVM: LoginViewModel
    @EnvironmentObject private var FAQVm: FAQViewModel
    @EnvironmentObject private var MovieVM: MoviesViewModel
    
    var body: some View {
        Image(
            systemName: colorScheme ? "arrowshape.turn.up.backward.fill" : "delete.backward.fill"
        )
        .foregroundStyle(.blue)
        
        Button{
            loginVM.logoutUser()
        }label: {
            Text(
                L10n.logout(langVM.selectedLanguage)
            )
            .font(.title2)
            .foregroundStyle(.red)
        }
    }
}

#Preview {
    LogoutView()
        .environmentObject(LoginViewModel())
        .environmentObject(LanguageManager())
}
