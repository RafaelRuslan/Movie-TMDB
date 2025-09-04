//
//  NetworkManagerReal.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//



import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    private let apiKey = "4d63c13679624dc5412eb378f2d6fff7"
    private let baseURL = "https://api.themoviedb.org/3/movie"
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 10
        config.timeoutIntervalForResource = 10
        return URLSession(configuration: config)
    }()
    
    func fetchMovies(endpoint: String) async throws -> [Movie] {
        try await request(endpoint: endpoint)
    }

    func fetchMovieDetails(movieID: Int) async throws -> MovieDetails {
        let urlString = "\(baseURL)/\(movieID)?api_key=\(apiKey)&language=en-US"
        guard let url = URL(string: urlString) else { throw URLError(.badURL) }

        let (data, response) = try await session.data(from: url)

        if let httpResponse = response as? HTTPURLResponse {
            print("Status code:", httpResponse.statusCode)
        }

        try validate(response: response)
        return try JSONDecoder().decode(MovieDetails.self, from: data)
    }
    
    func fetchPopular() async throws -> [Movie] { try await fetchMovies(endpoint: "popular") }
    func fetchNowPlaying() async throws -> [Movie] { try await fetchMovies(endpoint: "now_playing") }
    func fetchUpcoming() async throws -> [Movie] { try await fetchMovies(endpoint: "top_rated") }
    func fetchNewRelease() async throws -> [Movie] { try await fetchMovies(endpoint: "new_release") }
    func fetchPopularAll() async throws -> [Movie] { try await fetchMovies(endpoint: "popular") }
    func fetchUpcomingAll() async throws -> [Movie] { try await fetchMovies(endpoint: "top_rated")}
    
    
    private func request(endpoint: String) async throws -> [Movie] {
        let urlString = "\(baseURL)/\(endpoint)?api_key=\(apiKey)&language=en-US&page=1"
        
        guard let url = URL(string: urlString) else { throw URLError(.badURL) }
        print("url is",urlString)

        
        do {
            let (data, response) = try await session.data(from: url)
            try validate(response: response)
            let decoded = try JSONDecoder().decode(MovieResponse.self, from: data)
            return decoded.results
        } catch {
                throw error
        }
    }
    
    private func validate(response: URLResponse) throws {
        if let httpResponse = response as? HTTPURLResponse {
            guard 200..<300 ~= httpResponse.statusCode else {
                throw URLError(.badServerResponse)
            }
        }
    }
    
    func fetchMovieVideos(movieID: Int) async throws -> [MovieVideo] {
        let urlString = "https://api.themoviedb.org/3/movie/\(movieID)/videos?api_key=\(apiKey)&language=en-US"
        guard let url = URL(string: urlString) else { throw URLError(.badURL) }
        
        let (data, response) = try await session.data(from: url)
        try validate(response: response)
        
        let decoded = try JSONDecoder().decode(MovieVideosResponse.self, from: data)
        return decoded.results
    }
    
    func fetch< T: Decodable>(_ endpoint: String, type: T.Type) async throws -> T {
        guard let url = URL(string: "\(baseURL)\(endpoint)?api_key=\(apiKey)&language=en-US") else { throw URLError(.badURL)}
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
