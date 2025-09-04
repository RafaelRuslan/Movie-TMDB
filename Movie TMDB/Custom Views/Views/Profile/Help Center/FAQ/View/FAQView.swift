//
//  FAQView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct FAQView: View {
    
    @EnvironmentObject private var vm: FAQViewModel
    @EnvironmentObject private var langVM: LanguageManager
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack{
                ForEach(FAQCategory.allCases, id: \.self){ category in
                    Button(action: {
                        vm.selectedCategory = category
                    }) {
                        Text(category.displayName(langVM.selectedLanguage))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 8)
                            .background(
                                vm.selectedCategory == category ? Color.red : Color.white
                            )
                            .foregroundStyle(vm.selectedCategory == category ? .white : .red)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    .frame(width: 100, height: 30, alignment: .center)
                }
            }
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(vm.faqData[vm.selectedCategory] ?? []) { item in
                        DisclosureGroup(
                            isExpanded: Binding(
                                get: { vm.expanded == item.id },
                                set: { vm.expanded = $0 ? item.id : nil }
                            )
                        ) {
                            Text(item.answer)
                                .answerStyle()
                        } label: {
                            Text(item.question)
                                .font(.headline)
                        }
                        .itemPadding()
                    }
                }
                .padding(.vertical)
            }
            .onAppear{
                vm.loadFAQData(for: langVM.selectedLanguage)
            }
            .onChange(of: langVM.selectedLanguage) {
                vm.loadFAQData(for: langVM.selectedLanguage)
            }
        }
        .padding(.leading)
        .padding(.horizontal, 16)
    }
}

#Preview {
    FAQView()
        .environmentObject(FAQViewModel())
        .environmentObject(LanguageManager())
}
