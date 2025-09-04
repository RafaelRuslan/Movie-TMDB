//
//  ReviewResponse.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import Foundation

struct ReviewResponse: Codable {
    let results: [Review]?
}

struct Review: Codable, Identifiable {
    let author: String?
    let content: String?
    let createdAt: String?

    var id: String {
        if let author = author, let createdAt = createdAt {
            return author + createdAt
        }
        return UUID().uuidString
    }

    var safeAuthor: String { author ?? "Unknown" }
    var safeContent: String { content ?? "No review available" }
    var safeDate: String { createdAt ?? "" }
}
