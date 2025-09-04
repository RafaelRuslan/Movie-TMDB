//
//  PrivacyPolicyProfileView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct PrivacyPolicyProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var langVM: LanguageManager
    
    var body: some View {
        List{
            Section(header: Text(  L10n.introduction(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(L10n.privacyPolicyText(langVM.selectedLanguage))
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.informationWeCollect(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.informationCollected(langVM.selectedLanguage)
                )
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.howWeUseYourInformation(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.howWeUseYourInformationDetails(langVM.selectedLanguage)
                )
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.sharingOfInformation(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.sharingOfInformationDetails(langVM.selectedLanguage)
                )
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.dataSecurity(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.dataSecurityDetails(langVM.selectedLanguage)
                )
            }
            Section(header: Text(
                L10n.yourRights(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.yourRightsDetails(langVM.selectedLanguage)
                )
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.childrensPrivacy(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.childrensPrivacyDetails(langVM.selectedLanguage)
                )
            }
            Section(header: Text(
                L10n.thirdPartyServices(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.thirdPartyServicesDetails(langVM.selectedLanguage)
                )
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.changesToPolicy(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.changesToPolicyDetails(langVM.selectedLanguage)
                )
                .foregroundStyle(.primary)
            }
            Section(header: Text(
                L10n.contactUsPolicy(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            ){
                Text(
                    L10n.contactUsDetails(langVM.selectedLanguage)
            )
                .foregroundStyle(.primary)
            }
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
                    .foregroundStyle(.primary)
            }
        }
        ToolbarItem(placement: .principal) {
            Text(L10n.privacyPolicyTool(langVM.selectedLanguage))
                .font(.title)
                .foregroundStyle(.primary)
        }
    }
}

#Preview {
    PrivacyPolicyProfileView()
        .environmentObject(LanguageManager())
}
