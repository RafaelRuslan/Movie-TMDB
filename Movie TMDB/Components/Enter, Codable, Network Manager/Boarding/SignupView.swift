//
//  SignupView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI

struct SignupView: View {
    
    @EnvironmentObject private var loginVm: LoginViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @EnvironmentObject private var MovieVM: MoviesViewModel
    @EnvironmentObject private var FAQvm: FAQViewModel
    @AppStorage("colorScheme") private var colorScheme = false
    @Environment(\.dismiss) private var dismiss
    @State private var showLoginView = false
    @Binding var path: [Movie]
    let movieID: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 30){
            Image(.M)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .background(
                    colorScheme ? .white : .black
                )
            Text(L10n.localizedCreateYourAccount(langVM.selectedLanguage))
                .font(.title)
                .bold()
            TextField("✉️ Enter your email", text: $loginVm.email)
                .securefieldModify()
            SecureField("🔒 Enter your password", text: $loginVm.password)
                .securefieldModify()
            Button{
                loginVm.registerUser()
            }label: {
                Text(L10n.localizedSignUp(langVM.selectedLanguage))
                    .signupButtonStyle()
                
            }
            Text(L10n.localizedOrContinueWith(langVM.selectedLanguage))
                .font(.title2)
                .padding(.top, 10)
            HStack(alignment: .center, spacing: 70) {
                Button{
                    
                }label: {
                    Image(.facebook)
                        .resizable()
                        .socialityStyle()
                }
                Button{
                    
                }label: {
                    Image(.google)
                        .resizable()
                        .socialityStyle()
                }
                
                Button{
                    
                }label: {
                    Image(systemName: "apple.logo")
                        .resizable()
                        .socialityStyle()
                        .foregroundStyle(colorScheme ? .white : .black)
                }
            }
            
            HStack(alignment: .center, spacing: 12){
                Text(L10n.localizedAlreadyHaveAccount(langVM.selectedLanguage))
                    .alreadyStyle()
                Button{
                   dismiss()
                }label: {
                    Text(L10n.localizedSignIn(langVM.selectedLanguage))
                    .signInStyle()
                }
            }
            
        }
        .alert(isPresented: $loginVm.showAlert){
            Alert(
                title: Text(L10n.localizedError(langVM.selectedLanguage)),
                message: Text(loginVm.alertMessage),
                dismissButton: .default(Text(L10n.localizedOk(langVM.selectedLanguage)))
            )
        }
        .navigationDestination(isPresented: $loginVm.isAuthorized){
            MainView(path: $path, movieID: movieID)
                .environmentObject(FAQvm)
                .environmentObject(langVM)
                .environmentObject(loginVm)
                .environmentObject(MovieVM)
               
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            toolbar
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
