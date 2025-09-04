//
//  MonthlyCashView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//

import SwiftUI

struct MonthlyCashView: View {

    @EnvironmentObject private var langVM: LanguageManager
    @State private var monthList: [MonthlyCashModel] = [
        MonthlyCashModel(icon: "checkmark", title: L10n.watchAllAdFree(_:)),
        MonthlyCashModel(icon: "checkmark", title: L10n.allowsStreaming4K(_:)),
        MonthlyCashModel(icon: "checkmark", title: L10n.videoQualityBetter(_:))
    ]
    
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Image(systemName: "crown.fill")
                    .imageSystemNameStyle()
                
                Text(L10n.monthlyPrice(langVM.selectedLanguage))
                    .yearlyMontlyModify()
                
                VStack(spacing: 15) {
                    ForEach(monthList) { item in
                        HStack(spacing: 12) {
                            Image(systemName: item.icon)
                                .yearlyImageStyle()
                            
                            Text(item.title(langVM.selectedLanguage))
                                .font(.headline)
                                .foregroundStyle(.primary)
                            
                            Spacer()
                        }
                        .padding(.vertical, 8)
                    }
                }
                .padding(.horizontal)
            }
            .cashStyle()
        }
    }
}
#Preview {
    MonthlyCashView()
        .environmentObject(LanguageManager())
}
