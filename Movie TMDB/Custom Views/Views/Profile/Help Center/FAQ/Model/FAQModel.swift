//
//  FAQModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 11.09.25.
//

import SwiftUI

struct FAQModel: Identifiable{
    let id = UUID()
    let question: String
    let answer: String

}

enum FAQCategory: String, CaseIterable, Identifiable{
    case general
    case account
    case service
    case video
    
    var id: String {rawValue}
    
    func displayName(_ language: AppLanguage) -> String {
           switch self {
           case .general: return L10n.general(language)
           case .account: return L10n.account(language)
           case .service: return L10n.service(language)
           case .video: return L10n.video(language)
           }
       }
}


