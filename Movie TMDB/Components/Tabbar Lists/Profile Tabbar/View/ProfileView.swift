//
//  ProfileView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject private var loginVM: LoginViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @EnvironmentObject private var FAQVm: FAQViewModel
    @EnvironmentObject private var editProfileVM: EditProfileViewModel
    @AppStorage("colorScheme") private var colorScheme = false
    @AppStorage("fullName") private var fullName: String = ""
    @AppStorage("email") private var email: String = ""
    @State private var openSubscribeView = false
    
    var body: some View {
        VStack(spacing: 30){
            
            ProfilImageView()
            
            Text(fullName.isEmpty ? L10n.unknown(langVM.selectedLanguage) : fullName)
                .font(.system(size: 40))
                .font(.headline)
            
            Text(email.isEmpty ? L10n.unknown(langVM.selectedLanguage) : email)
                .font(.system(size: 30))
                .font(.subheadline)
            Button{
                openSubscribeView = true
            }label: {
                JoinPremiumView()
            }
            List{
                Section(
                    L10n.tabProfile(
                        langVM.selectedLanguage
                    )
                ) {
                    ProfileDetails()

                    HStack{
                        DarkModeView()
                    }
                    HStack{
                        LogoutView()
                    }
                }
            }
        }
        .navigationDestination(isPresented: $openSubscribeView) {
            SubscribeToPremiumView()
                .environmentObject(langVM)
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(LanguageManager())
        .environmentObject(FAQViewModel())
        .environmentObject(LoginViewModel())
        .environmentObject(EditProfileViewModel())
}
