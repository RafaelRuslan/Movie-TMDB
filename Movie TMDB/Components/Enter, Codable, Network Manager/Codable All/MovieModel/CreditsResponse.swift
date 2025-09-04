//
//  MovieCreditsResponse.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import Foundation

struct CreditsResponse: Codable {
    let id: Int
    let cast: [Actor]
    let crew: [Crew]
}

struct Actor: Codable, Identifiable {
    let id: Int
    let name: String?
    let originalName: String?
    let character: String?
    let castID: Int?
    let profilePath: String?
    let order: Int?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case originalName = "original_name"
        case character
        case castID = "cast_id"
        case profilePath = "profile_path"
        case order
    }
}

struct Crew: Codable, Identifiable {
    let id: Int
    let name: String?
    let originalName: String?
    let department: String?
    let job: String?
    let profilePath: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case originalName = "original_name"
        case department, job
        case profilePath = "profile_path"
    }
}
