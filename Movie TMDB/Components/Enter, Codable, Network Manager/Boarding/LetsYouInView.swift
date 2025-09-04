//
//  LetsYouInView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI
import CoreData
import FBSDKCoreKit
import FacebookLogin
import FirebaseAuth

struct LetsYouInView: View {
    
    @EnvironmentObject private var movieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @EnvironmentObject private var loginVM: LoginViewModel
    @EnvironmentObject private var FAQvm: FAQViewModel
    @AppStorage("colorScheme") private var colorScheme = false
    @State private var showLoginView = false
    @State private var showSignUpView = false
    @Environment(\.dismiss) private var dismiss
    let movieID: Int
    @Binding var path: [Movie]

    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 40){
                Image(.girlWatch)
                    .resizable()
                    .girlStyle()
                HStack(alignment: .center, spacing: 20) {
                    
                    Image(.facebook)
                        .resizable()
                        .socialStyle()
                    
                    Button{
                        
                    }label: {
                        
                        Text(L10n.localizedContinueWithFacebook(langVM.selectedLanguage))
                            .font(.title2)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
                
                .backgroundSocialStyle()
                
                HStack(alignment: .center, spacing: 20) {
                    
                    Image(.google)
                        .resizable()
                        .socialStyle()
                    Button{
                        
                    }label: {
                        Text(L10n.localizedContinueWithGoogle(langVM.selectedLanguage))
                            .font(.title2)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
                
                .backgroundSocialStyle()
                
                HStack(alignment: .center, spacing: 20){
                    
                    Image(systemName: "apple.logo")
                        .resizable()
                        .socialStyle()
                        .foregroundStyle(colorScheme ? .white : .black)
                    Button{
                        
                    }label: {
                        Text(L10n.localizedContinueWithApple(langVM.selectedLanguage))
                            .font(.title2)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
                .backgroundSocialStyle()
                Divider()
                
                HStack(alignment: .center) {
                    Text(L10n.localizedOr(langVM.selectedLanguage))
                        .font(.title2)
                        .lineSpacing(1)
                }
                Button{
                    showLoginView = true
                }label: {
                    Text(L10n.localizedSignInWithPassword(langVM.selectedLanguage))
                        .signupStyleModify()
                }
                HStack(alignment: .center, spacing: 12){
                    Text(L10n.localizedDontHaveAccount(langVM.selectedLanguage))
                        .foregroundStyle(.gray)
                    Button{
                        showSignUpView = true
                    }label: {
                        Text(L10n.localizedSignUp(langVM.selectedLanguage))
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.red)
                    }
                }
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                toolbar
            }
            .navigationDestination(isPresented: $showLoginView) {
                LoginView(movieID: movieID, path: $path)
                    .environmentObject(loginVM)
                    .environmentObject(movieVM)
                    .environmentObject(langVM)
                    .environmentObject(FAQvm)
                
            }
            .navigationDestination(isPresented: $showSignUpView) {
                SignupView(path: $path, movieID: movieID)
                    .environmentObject(langVM)
                    .environmentObject(loginVM)
                    .environmentObject(FAQvm)
                    .environmentObject(movieVM)
            }
        }
    }
    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .topBarLeading) {
            Button{
                dismiss()
            }label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(colorScheme ? .white : .black)
            }
        }
    }
}
//
//#Preview {
//    let persistenceController = PersistenceController.shared
//    LetsYouInView(movieID: 1)
//        .environmentObject(LanguageManager())
//        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
//        .environmentObject(LoginViewModel())
//        .environmentObject(FAQViewModel())
//}
