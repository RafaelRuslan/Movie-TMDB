//
//  MovieVideo.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 19.09.25.
//

import Foundation

struct MovieVideo: Codable {
    let key: String
    let site: String
    let type: String
}

struct MovieVideosResponse: Codable {
    let results: [MovieVideo]
}

