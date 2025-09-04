//
//  AppLanguage.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 12.09.25.
//

import Foundation

enum AppLanguage: String, CaseIterable, Identifiable {
    case en = "en"
    case az = "az"
    case fr = "fr"
    case de = "de"
    case ar = "ar"
    
    var id: String { rawValue }
    
    var displayName: String {
        switch self {
        case .en: return "English"
        case .az: return "Azərbaycan"
        case .fr: return "Français"
        case .de: return "Deutsch"
        case .ar: return "العربية"
        }
    }
}
