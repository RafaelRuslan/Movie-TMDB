//
//  HelpCenterProfileView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct HelpCenterProfileView: View {
   
    @EnvironmentObject private var langVM: LanguageManager
    @State private var selectSection: HelpCenterModel.Section = .faq
    
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var vm: FAQViewModel
    var body: some View {
        VStack(alignment: .leading){
            Picker("Select Section", selection: $selectSection){
                ForEach(HelpCenterModel.Section.allCases, id: \.self){ section in
                    Text(section.displayName(langVM.selectedLanguage))
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
                if selectSection == .faq {
                    ScrollView {
                        FAQView()
                            .environmentObject(vm)
                            .environmentObject(langVM)
                            .faqStyle()
                    }
                } else {
                    ContactUSView()
                        .padding(.horizontal)
                        .foregroundStyle(.primary)
                        .environmentObject(langVM)
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
            Text(L10n.HelpCenter(langVM.selectedLanguage))
                .font(.title)
                .foregroundStyle(.primary)
        }
    }
}

#Preview {
    HelpCenterProfileView()
        .environmentObject(FAQViewModel())
        .environmentObject(LanguageManager())
}
