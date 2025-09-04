//
//  LanguageManager.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 12.09.25.
//

import SwiftUI

class LanguageManager: ObservableObject{
    @Published var selectedLanguage : AppLanguage{
        didSet{
            UserDefaults.standard.set([selectedLanguage.rawValue], forKey: "AppleLanguages")
            UserDefaults.standard.synchronize()
        
        }
    }
    init(){
        let code = Locale.preferredLanguages.first?.prefix(2) ?? "en"
        self.selectedLanguage = AppLanguage(rawValue: String(code)) ?? .en
    }
}
