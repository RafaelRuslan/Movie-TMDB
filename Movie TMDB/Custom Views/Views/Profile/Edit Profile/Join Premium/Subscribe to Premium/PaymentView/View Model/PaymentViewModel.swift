//
//  PaymentViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 16.09.25.
//

import Foundation
import SwiftUI

class PaymentViewModel: ObservableObject{
    
    @Published var cardNumber: String = ""
    @Published var expiryDate: String = ""
    @Published var cvv: String = ""
    @Published var cardHolder: String = ""
    @Published var showSuccess = false
    @Published var showAlert = false
    @Published var alertMessages = ""
    
    func validateAlerts() -> String{
        if cardNumber.isEmpty{
           return "Card number is required."
        }else if expiryDate.isEmpty {
            return "Expiry date is required."
        }else if cvv.isEmpty{
            return "CVV is required."
        }else if cardHolder.isEmpty {
           return "Please personal card name login."
        }
        return "✅ Successfully!"
    }
    
    func formatCardNumber(_ input: String) -> String{
        let digits = input.replacingOccurrences(of: "\\D", with: "", options: .regularExpression)
        let limited = String(digits.prefix(16))
        
        var result = ""
        
        for (index, char) in limited.enumerated(){
            if index != 0 && index % 4 == 0 {
                result.append(" ")
            }
            result.append(char)
        }
        if result != cardNumber {
            cardNumber = result
        }
        return result
    }
    
    func formatExpriyDate(_ input: String) -> String {
        let digits = input.replacingOccurrences(of: "\\D", with: "", options: .regularExpression)
        let limited = String(digits.prefix(4))
        
        if limited.count <= 2{
            return limited
        }else {
            let month = limited.prefix(2)
            let year = limited.suffix(from: limited.index(limited.startIndex, offsetBy: 2))
            return "\(month)/\(year)"
        }
    }
    
    func formatCVV(_ input: String) -> String {
        return String(input.prefix(3))
    }
}
