//
//  ContactUSView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct ContactUSView: View {
    @EnvironmentObject private var langVM: LanguageManager
    @StateObject private var vm = ContactUSViewModel()
    @AppStorage("colorScheme") private var colorScheme = false
    var body: some View {
        List{
            Section{
                Label(L10n.customizeService(langVM.selectedLanguage), systemImage: "headset")
                    .font(.headline)
                    .foregroundStyle(colorScheme ? .white : .black)
            }
            Section{
                HStack(spacing: 10){
                    Image(.whatsapp)
                        .resizable()
                        .helpImageStyle()
                    Button{

                    }label: {
                        Text(L10n.whatsapp(langVM.selectedLanguage))
                            .font(.headline)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
            }
            Section{
                HStack(spacing: 10) {
                    Image(.facebook)
                        .resizable()
                        .helpImageStyle()
                    Button{
                        vm.openFacebook()
                    }label: {
                        Text(L10n.facebook(langVM.selectedLanguage))
                            .font(.headline)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }

                }
            }
            Section{
                HStack(spacing: 10) {
                    Image(.X)
                        .resizable()
                        .helpImageStyle()
                    Button{
                        vm.openX()
                    }label: {
                        Text(L10n.x(langVM.selectedLanguage))
                            .font(.headline)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
            }
            Section {
                HStack(spacing: 10) {
                    Image(.instagram)
                        .resizable()
                        .helpImageStyle()
                    Button{
                        vm.openInstagram()
                    }label: {
                        Text(L10n.instagram(langVM.selectedLanguage))
                            .font(.headline)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
            }
            Section{
                HStack(spacing: 10){
                    Image(.linkedin)
                        .resizable()
                        .helpImageStyle()
                    Button{
                        vm.openLinkedin()
                    }label: {
                        Text(L10n.linkedin(langVM.selectedLanguage))
                            .font(.headline)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
            }
            Section{
                HStack(spacing: 10) {
                    Image(.reddit)
                        .resizable()
                        .helpImageStyle()
                    Button{
                        vm.openReddit()
                    }label: {
                        Text(L10n.reddit(langVM.selectedLanguage))
                            .font(.headline)
                            .foregroundStyle(colorScheme ? .white : .black)
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .toolbar {
            toolbar
        }
    }
    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .principal) {
            Text(L10n.toolbarContactUS(langVM.selectedLanguage))
        }
    }
}

#Preview {
    ContactUSView()
        .environmentObject(LanguageManager())
}
