//
//  DownloadModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 09.09.25.
//

import Foundation
import SwiftUI

struct DownloadModel: Identifiable{
    let id = UUID()
    let iconName: String
    let title: (AppLanguage) -> String
}


