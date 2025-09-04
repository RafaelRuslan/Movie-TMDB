//
//  ProfileModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import Foundation

struct ProfileModel: Identifiable{
    let id = UUID()
    let icon: String
    let key: ProfileKey
}


enum ProfileKey {
    case editProfile
    case notification
    case download
    case security
    case language
    case helpCenter
    case privacyPolicy
}
