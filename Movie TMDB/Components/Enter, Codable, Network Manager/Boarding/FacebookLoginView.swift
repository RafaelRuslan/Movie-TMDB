//
//  FacebookLoginView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 23.09.25.
//

import SwiftUI
import FBSDKCoreKit
import FirebaseAuth
import FacebookLogin

struct FacebookLoginView: View {
    var body: some View {
        Button(action: {
            let loginManager = LoginManager()
            loginManager.logIn(permissions: ["public profile", "email"], from: nil){ result, error in
                if let error = error{
                    print("facebook login failed:", error.localizedDescription)
                    return
                }
                guard let token = AccessToken.current?.tokenString else {
                    print("Facebook token not found")
                    return
                }
                let credential = FacebookAuthProvider.credential(withAccessToken: token)
                Auth.auth().signIn(with: credential) { authResult, error in
                    if let error = error{
                        print("Firebase auth failed:", error.localizedDescription)
                    }
                    print("Facebook login successful, user: \(authResult?.user.email ?? "No email")")
                }
            }
        }) {
            Text("Continue with facebook")
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    FacebookLoginView()
}
