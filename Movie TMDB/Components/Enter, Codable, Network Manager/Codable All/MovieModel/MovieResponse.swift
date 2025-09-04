//
//  MovieResponse.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import Foundation

struct MovieResponse: Codable {
    let results: [Movie]
    let page: Int
    let totalPages: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
    }
}


struct Movie: Codable, Identifiable, Hashable {
    let id: Int
    let title: String?
    let posterPath: String?
    let overview: String?
    let voteAverage: Double?
    
    func hash(into hasher: inout Hasher) {
          hasher.combine(id)
      }

      static func == (lhs: Movie, rhs: Movie) -> Bool {
          lhs.id == rhs.id
      }
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
       
        
    }
    
    enum MovieCategory: String, CaseIterable {
        case popular, upcoming, nowPlaying, topRated 
        
        var displayName: String {
            switch self {
            case .popular: return "Popular"
            case .upcoming: return "Upcoming"
            case .nowPlaying: return "Now Playing"
            case .topRated: return "Top Rated"
            }
        }
    }
}
