//
//  SubscribeToPremiumView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//

import SwiftUI

struct SubscribeToPremiumView: View {
    @EnvironmentObject private var langVM: LanguageManager
    @Environment(\.dismiss) private var dismiss
    @AppStorage("colorScheme") private var colorScheme = false
    @State private var showPayment = false
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .center, spacing: 20){
                Text(L10n.subscribeToPremium(langVM.selectedLanguage))
                    .premiumTextStyle()
                Text(L10n.fullHDMovies(langVM.selectedLanguage))
                    .font(.title2)
                Button{
                    showPayment = true
                }label: {
                    
                    MonthlyCashView()
                        .environmentObject(langVM)
                        .foregroundStyle(colorScheme ? .blue : .black)
                }
                YearlyCashView()
                    .environmentObject(langVM)
            }
        }
        .navigationDestination(isPresented: $showPayment){
            PaymentView()
                .environmentObject(langVM)
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
    }
}

#Preview {
    SubscribeToPremiumView()
        .environmentObject(LanguageManager())
}
