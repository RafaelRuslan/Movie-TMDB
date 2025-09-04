//
//  ProfileDetails.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//

import SwiftUI

struct ProfileDetails: View {
    @EnvironmentObject private var langVM: LanguageManager
    @EnvironmentObject private var FAQVm: FAQViewModel
   
    @ViewBuilder
    func profileDetails( for item: Binding<ProfileModel>) -> some View{
        switch item.wrappedValue.icon{
        case "person.fill":
            EditProfileView()
                .environmentObject(langVM)
        case "bell.fill":
            NotificationView(langVM: LanguageManager())
                .environmentObject(langVM)
        case "square.and.arrow.down.fill":
            DownloadProfileView()
                .environmentObject(langVM)
        case "checkmark.shield":
            SecurityProfileView()
                .environmentObject(langVM)
        case "contextualmenu.and.cursorarrow":
            LanguageView()
                .environmentObject(langVM)
        case "i.circle":
            HelpCenterProfileView()
                .environmentObject(FAQVm)
                .environmentObject(langVM)
        case "p.circle.fill":
            PrivacyPolicyProfileView()
                .environmentObject(langVM)
        default:
            EmptyView()
        }
    }
    
    @State var profile: [ProfileModel] = [
        ProfileModel(
            icon: "person.fill",
            key: .editProfile
        ),
           ProfileModel(
            icon: "bell.fill",
            key: .notification
           ),
           ProfileModel(
            icon: "square.and.arrow.down.fill",
            key: .download
           ),
           ProfileModel(
            icon: "checkmark.shield",
            key: .security
           ),
           ProfileModel(
            icon: "contextualmenu.and.cursorarrow",
            key: .language
           ),
           ProfileModel(
            icon: "i.circle",
            key: .helpCenter
           ),
           ProfileModel(
            icon: "p.circle.fill",
            key: .privacyPolicy
           ),
    ]
    
    
    var body: some View {

        ForEach(profile.indices, id: \.self){ item in
            NavigationLink(
                destination: profileDetails(
                    for: $profile[item]
                )
            ){
                HStack{
                    Image(systemName: profile[item].icon
                    )
                                            .foregroundStyle(.blue)
                                        Text(
                                            L10n.profileTitle(profile[item].key,
                                                              langVM.selectedLanguage
                                                             )
                                        )
                                            .font(.title2)
                                            .foregroundStyle(.primary)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ProfileDetails()
        .environmentObject(LanguageManager())
        .environmentObject(FAQViewModel())
        .environmentObject(LoginViewModel())
}
