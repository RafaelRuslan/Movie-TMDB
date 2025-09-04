//
//  EditProfileView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var langVM: LanguageManager
    @AppStorage("fullName") private var fullName: String = ""
    var body: some View {
        
       ProfilImageView()
        .padding()
        
        EditProfileTextfieldView()
        
        .navigationBarBackButtonHidden()
        .toolbar {
            toolbar
        }
    }
    
    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .principal) {
            Text(L10n.editProfileEditProfile(langVM.selectedLanguage))
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.primary)
        }
        ToolbarItem(placement: .topBarLeading) {
            Button{
                dismiss()
            }label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.primary)
            }
        }
    }
}

#Preview {
    EditProfileView()
        .environmentObject(LanguageManager())
}

