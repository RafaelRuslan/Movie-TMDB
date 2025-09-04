//
//  MovieDetails.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 06.09.25.
//

import Foundation

struct MovieDetails: Codable {
    let id: Int
    let title: String?
    let overview: String?
    let releaseDate: String?
    let runtime: Int?
    let voteAverage: Double?
    let voteCount: Int?
    let posterPath: String?
    let backdropPath: String?
    let genres: [Genre]?
    let originalLanguage: String?

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overview
        case releaseDate = "release_date"
        case runtime
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case genres
        case originalLanguage = "original_language"
    }
}

struct Genre: Codable {
    let id: Int
    let name: String
}


