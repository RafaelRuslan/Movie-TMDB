//
//  HelpCenterModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 14.09.25.
//


import Foundation

struct HelpCenterModel{
    
    enum Section: String, CaseIterable, Identifiable{
        case faq
        case contactUS
        
        var id: String { rawValue }
        
        func displayName(_ language: AppLanguage) -> String{
            switch self{
            case .faq: return L10n.FAQ(language)
            case .contactUS: return L10n.contactUSScroll(language)
            }
        }
    }
}
