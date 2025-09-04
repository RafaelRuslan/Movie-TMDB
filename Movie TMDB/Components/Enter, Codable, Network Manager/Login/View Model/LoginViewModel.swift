//
//  LoginViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth

class LoginViewModel: ObservableObject{
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showAlert: Bool = false
    @Published var alertMessage: String = ""
    @Published var isRegistered: Bool = false
    @Published var user: User? = nil
    @AppStorage("isAuthorized") var isAuthorized: Bool = false
    
    func loginUser(){
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if error != nil{
                self?.alertmessage()
                self?.showAlert = true
            }else if let user = result?.user{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    self?.isAuthorized = true
                }
                self?.user = user
                self?.email = user.email ?? "no login"
            }
        }
    }
    
    func alertmessage(){
        if email.isEmpty{
            self.alertMessage = "Email boshdur"
        }else if password.isEmpty{
            self.alertMessage = "Password boshdur"
        }else if password.count < 7{
            self.alertMessage = "Password azdir"
        }
    }
    
    func registerUser(){
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            if let error = error{
                self?.alertMessage = error.localizedDescription
                self?.showAlert = true
            }else if let user = result?.user{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    self?.isAuthorized = true
                }
                self?.user = user
                self?.email = user.email ?? "no email"
            }
        }
    }
    func logoutUser(){
        self.isAuthorized = false
        self.email = ""
        self.password = ""
        EditProfileViewModel.clearData()
        
    }
}
