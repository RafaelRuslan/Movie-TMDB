//
//  LanguageView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct LanguageView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var langVM: LanguageManager
    var body: some View {
            List{
                ForEach(AppLanguage.allCases){ lang in
                    HStack{
                        Text(lang.displayName)
                            .foregroundStyle(.primary)
                        Spacer()
                        Image(systemName: langVM.selectedLanguage == lang ? "largecircle.fill.circle" : "circle")
                            .foregroundStyle(.blue)
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        langVM.selectedLanguage = lang
                    }
                }
            }
        .navigationBarBackButtonHidden()
        .toolbar {
            toolbar
        }
    }
    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .principal) {
            Text(L10n.languageTitle(langVM.selectedLanguage))
                .font(.title)
                .foregroundStyle(.primary)
                .bold()
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
    LanguageView()
        .environmentObject(LanguageManager())
}
