//
//  PaymentView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import SwiftUI

struct PaymentView: View {
    @EnvironmentObject private var langVM: LanguageManager
    @Environment(\.dismiss) private var dismiss
    @StateObject private var payVM = PaymentViewModel()
    
    var body: some View {
        VStack(spacing: 25) {
            Text("💳 \(L10n.payment(langVM.selectedLanguage))")
                .foregroundStyle(.primary)
                .font(.title2)
            TextField("1234 5678 9012", text: $payVM.cardNumber)
                .payMentModifyStyle()
                .onChange(of: payVM.cardNumber){
                   let formatted = payVM.formatCardNumber(payVM.cardNumber)
                    if formatted != payVM.cardNumber{
                        payVM.cardNumber = formatted
                    }
                }
            HStack(spacing: 20) {
                TextField("MM/YY", text: $payVM.expiryDate)
                    .expiryStyle()
                    .onChange(of: payVM.expiryDate) {
                        let formatted = payVM.formatExpriyDate(payVM.expiryDate)
                        if formatted != payVM.expiryDate {
                            payVM.expiryDate = formatted
                        }
                        
                    }
                TextField("CVV", text: $payVM.cvv)
                    .cvvStyle()
                    .onChange(of: payVM.cvv) {
                        let formatted = payVM.formatCVV(payVM.cvv)
                        if formatted != payVM.cvv{
                            payVM.cvv = formatted
                        }
                    }
            }
            .padding(.horizontal)
            TextField(L10n.enterCardName(langVM.selectedLanguage), text: $payVM.cardHolder)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            Button(action: {
                payVM.showAlert = true
            }) {
                Text("✅ \(L10n.payButton(langVM.selectedLanguage))")
                    .payButtonStyle()
               
            }
            Spacer()
            
        }
        .alert(isPresented: $payVM.showAlert) {
            Alert(title:
                    Text("⚠️ Error"),message: Text("\(payVM.validateAlerts())"),
                  dismissButton: .default(Text("OK!")))
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
    PaymentView()
        .environmentObject(LanguageManager())
}
