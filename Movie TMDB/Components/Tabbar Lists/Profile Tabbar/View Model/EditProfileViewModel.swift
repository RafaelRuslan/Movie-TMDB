//
//  EditProfileViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 10.09.25.
//

import Foundation
import SwiftUI

class EditProfileViewModel: ObservableObject{
    @AppStorage("phoneNumber") var phoneNumber: String = ""
    @AppStorage("selectedCountryNumber") var selectedCountryNumber: String = "🇺🇸 +1"
    @AppStorage("selectGender") var selectGender: String = "Male"
    @AppStorage("selectionGender") var selectionGender: String = ""
    @AppStorage("selectedCountryName") var selectedCountryName = ""
    
    let gender: [String] = [
        "Male",
        "Female"
    ]
        
    let countriesNumber: [String] = [
            "🇺🇸 +1",
            "🇬🇧 +44",
            "🇹🇷 +90",
            "🇦🇿 +994",
            "🇩🇪 +49",
            "🇦🇷 +54",
            "🇦🇹 +43",
            "🇦🇺 +61",
            "🇧🇾 +375",
            "🇦🇱 +355",
            "🇦🇪 +971",
            "🇧🇬 +359",
            "🇧🇦 +387",
            "🇧🇷 +55",
            "🇹🇩 +235",
            "🇨🇿 +420",
            "🇨🇱 +56",
            "🇨🇳 +86",
            "🇩🇰 +45",
            "🇪🇪 +372",
            "🇦🇫 +93",
            "🇩🇿 +213",
            "🇫🇮 +358",
            "🇫🇷 +33",
            "🇬🇪 +995",
            "🇮🇶 +964",
            "🇮🇱 +972",
            "🇸🇪 +46",
            "🇨🇭 +41",
            "🇮🇩 +62",
            "🇮🇷 +98",
            "🇮🇪 +353",
            "🇮🇸 +354",
            "🇮🇹 +39",
            "🏴󠁧󠁢󠁥󠁮󠁧󠁿 +44",
            "🇪🇸 +34",
            "🇮🇳 +91",
            "🇳🇱 +31",
            ]
    
    let countryNames: [String] = [
        "United States",
        "Azerbaijan",
        "England",
        "France",
        "Turkiye",
        "Belgium",
        "Spain",
        "Sweden",
        "Switzerland",
        "Ireland",
        "Iraq",
        "Iran IR",
        "China",
        "Kazakhstan",
        "Uzbekistan",
        "Turkmenistan",
        "Georgia",
        "Russia Federation",
        "Portugal",
        "Brazil",
        "Mexico",
        "Canada",
        "Indonesia",
        "Philippines",
        "Thailand",
        "Japan",
        "South Korea",
        "Saudi Arabia",
        "U.A.E",
        "New Zealand",
        "Austria",
        "Australia",
        "Argentina",
        "Armenia",
        "Uruguay",
        "Paraguay",
        "Netherlands",
        "Germany",
        "Denmark",
        "Finland",
        "Ukraine",
        "Greece",
        "Italy",
        "Malta",
    ]
    
    static func clearData() {
           let defaults = UserDefaults.standard
           defaults.removeObject(forKey: "phoneNumber")
           defaults.removeObject(forKey: "selectedCountryNumber")
           defaults.removeObject(forKey: "selectGender")
           defaults.removeObject(forKey: "selectionGender")
           defaults.removeObject(forKey: "selectedCountryName")
           defaults.removeObject(forKey: "fullName")
           defaults.removeObject(forKey: "email")

           print("✅ All profile AppStorage values cleared")
       }
    
}
