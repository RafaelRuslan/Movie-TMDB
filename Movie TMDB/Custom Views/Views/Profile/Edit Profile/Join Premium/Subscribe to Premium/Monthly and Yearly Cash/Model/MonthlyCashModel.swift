//
//  MonthlyCashModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 15.09.25.
//

import Foundation

struct MonthlyCashModel: Identifiable{
    let id = UUID()
    let icon: String
    let title: (AppLanguage) -> String
}
