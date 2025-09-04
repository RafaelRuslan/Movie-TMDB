//
//  SecurityProfileView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct SecurityProfileView: View {
    @State private var isPinActive = false
    @State private var isPasswordActive = false
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var langVM: LanguageManager
    
    @State private var toggles: [String: Bool] = [:]
    
    var control: [String] {
        [
        L10n.securityAlerts(langVM.selectedLanguage),
        L10n.manageDevices(langVM.selectedLanguage),
        L10n.managePermission(langVM.selectedLanguage)
        ]
    }
    
    var security: [String] {
        
        [
            L10n.rememberMe(langVM.selectedLanguage),
            L10n.faceID(langVM.selectedLanguage),
            L10n.biometricID(langVM.selectedLanguage)
        ]
    }
    
    var body: some View {
            List {
                Section(
                    header:
                        Text(L10n.control(langVM.selectedLanguage))
                        .bold()) {
                    ForEach(control, id: \.self) { item in
                        Text(item)
                            .foregroundStyle(.primary)
                    }
                }
                
                Section(
                    header:
                        Text(L10n.security(langVM.selectedLanguage))
                        .bold()) {
                            ForEach(security, id: \.self) { key in
                        HStack {
                            Text(key)
                                .foregroundStyle(.primary)
                            Spacer()
                            Toggle("", isOn: Binding(
                                get: { toggles[key, default: false]},
                                set: { toggles[key] = $0 }
                            ))
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                            
                        }
                    }
                    
                    Text(L10n.googleAuthenticator(langVM.selectedLanguage))
                        .padding(.vertical, 5)
                    VStack(spacing: 15) {
                        Button {
                            isPinActive.toggle()
                            print("Change PIN clicked")
                        } label: {
                            Text(L10n.changePIN(langVM.selectedLanguage))
                                .pinOrPasswordStyle()
                        }
                    }
                    VStack{
                        Button {
                            isPasswordActive.toggle()
                            print("Change Password clicked")
                        } label: {
                            Text(L10n.changePassword(langVM.selectedLanguage))
                                .pinOrPasswordStyle()
                        }
                    }
        
                    .padding(.top, 10)
                }
            .listStyle(.insetGrouped)
        }
            .navigationBarBackButtonHidden()
            .toolbar{
                toolbar
            }
            .onAppear{
                toggles = Dictionary(uniqueKeysWithValues: security.map{ ($0, false)
                })
            }
            .onChange(of: langVM.selectedLanguage) { 
                toggles = Dictionary(uniqueKeysWithValues: security.map{ ($0, toggles[$0, default: false])
                })
            }
    }
    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .principal) {
            Text(L10n.securityDetails(langVM.selectedLanguage))
                .font(.title)
                .bold()
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
    SecurityProfileView()
        .environmentObject(LanguageManager())
}
