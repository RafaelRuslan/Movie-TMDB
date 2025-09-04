//
//  JoinPremiumView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//

import SwiftUI

struct JoinPremiumView: View {
    @EnvironmentObject private var langVM: LanguageManager
    
    var body: some View {
        ZStack{
            Rectangle()
                .rectStyle()
            HStack(alignment: .center, spacing: 15){
                Image(systemName: "crown.fill")
                    .imageSystemNameStyle()
                VStack(alignment: .leading, spacing: 12){
                    Text(L10n.joinPremium(langVM.selectedLanguage))
                        .premiumStyle()
                    Text(L10n.fullHDMovies(langVM.selectedLanguage))
                        .hdStyle()
                    
                }
            }
        }
      
    }
}

#Preview {
    JoinPremiumView()
        .environmentObject(LanguageManager())
}
