//
//  CreditsResponse.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import Foundation

struct CreditsResponse: Codable {
    let cast: [Cast]?
    let crew: [Crew]?
}

struct Cast: Codable, Identifiable {
    let id: Int?
    let name: String?
    let character: String?
    let profilePath: String?

    var safeID: Int { id ?? UUID().hashValue }
    var safeName: String { name ?? "Unknown" }

    enum CodingKeys: String, CodingKey {
        case id, name, character
        case profilePath = "profile_path"
    }
}

struct Crew: Codable, Identifiable {
    let id: Int?
    let name: String?
    let job: String?

    var safeID: Int { id ?? UUID().hashValue }
    var safeName: String { name ?? "Unknown" }
}
