//
//  LoginView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI
import CoreData

struct LoginView: View {
    @State private var showMainView = false
    @EnvironmentObject private var movieVM: MoviesViewModel
    @EnvironmentObject private var FAQVM: FAQViewModel
    @EnvironmentObject private var loginVM : LoginViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @Environment(\.dismiss) private var dismiss
    @AppStorage("colorScheme") private var colorScheme = false
    let movieID: Int
    @Binding  var path: [Movie]
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            Image(
                .boyWithMacbook
            )
                .resizable()
                .loginPicStyle()
            
            Text(
                L10n.loginToYourAccount(
                    langVM.selectedLanguage
                )
               )
            .registerOrTitleStyle()
            
            TextField(
                L10n.enterEmail(
                    langVM.selectedLanguage),
                text: $loginVM.email
            )
                .securefieldModify()
            SecureField(
                L10n.enterPassword(
                    langVM.selectedLanguage),
                text: $loginVM.password
            )
                .securefieldModify()
            HStack(spacing: 50) {
                Button(
                    L10n.login(
                        langVM.selectedLanguage)
                ){
                    loginVM.loginUser()
                }
                .signupButtonStyle()
                
            }
            .padding()
            .alert(isPresented: $loginVM.showAlert) {
                Alert(
                    title:
                        Text(L10n.localizedError(langVM.selectedLanguage)),
                    message:
                        Text(loginVM.alertMessage),
                    dismissButton:
                            .default(Text(L10n.localizedOk(langVM.selectedLanguage)))
                )
                
            }
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            toolbar
        }
        .navigationDestination(isPresented: $loginVM.isAuthorized) {
            MainView(path: $path, movieID: movieID)
                .environmentObject(langVM)
                .environmentObject(FAQVM)
                .environmentObject(movieVM)
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
