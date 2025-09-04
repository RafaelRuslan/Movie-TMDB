//
//  ReviewResponse.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import Foundation

struct MovieReviewsResponse: Codable {
    let id: Int?
    let page: Int?
    let results: [MovieReview]
    let totalPages: Int?
    let totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case id, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct MovieReview: Codable, Identifiable {
    let author: String?
    let authorDetails: AuthorDetails
    let content: String?
    let createdAt: String?
    let id: String?
    let updatedAt: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case author
        case authorDetails = "author_details"
        case content
        case createdAt = "created_at"
        case id
        case updatedAt = "updated_at"
        case url
    }
}

struct AuthorDetails: Codable {
    let name: String?
    let username: String
    let avatarPath: String?
    let rating: Int?

    enum CodingKeys: String, CodingKey {
        case name, username
        case avatarPath = "avatar_path"
        case rating
    }
}
