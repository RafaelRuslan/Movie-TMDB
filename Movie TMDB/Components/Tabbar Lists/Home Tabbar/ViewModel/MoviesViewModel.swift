//
//  MoviesViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import Foundation
import CoreData

@MainActor
class MoviesViewModel: ObservableObject {
    @Published var featuredMovie: Movie?
    @Published var top10Movies: [Movie] = []
    @Published var newReleaseMovies: [Movie] = []
    @Published var upcomingMovies: [Movie] = []
    @Published var popularMoviesAll: [Movie] = []
    @Published var upcomingMoviesAll: [Movie] = []
    @Published var nowPlayingMovies: [Movie] = []
    @Published var selectedMovies: MovieDetails? = nil
    @Published var movieDetails: [MovieDetails] = []
    @Published var searchMovie: String = ""
    @Published var searchTopratedMovies: String = ""
    @Published var isSearching = false
    @Published var searchPopularMovies: String = ""
    @Published var video: [MovieVideo] = []
    @Published var selectedVideoKey: String? = nil
    @Published var showTrailer: Bool = false
    @Published var isBookmarked: Bool = false
    @Published var cast: [Cast] = []
    @Published var crew: [Crew] = []
    @Published var review: [Review] = []
    
    @Published var genres: [Genre] =
    [
        Genre(id: 28, name: "Action"),
        Genre(id: 35, name: "Comedy"),
        Genre(id: 10749, name: "Romance"),
        Genre(id: 53, name: "Thriller"),
        Genre(id: 27, name: "Horror"),
        Genre(id: 9648, name: "Detective")
    ]
    
    @Published var movieCurrent: Movie?
    
    @Published var releasedYears: [Int] = []
    @Published var selectedYears: Int? = nil
    
    @Published var movies: [MovieModelCD] = []
    private let modelContext: NSManagedObjectContext
    
    init(context: NSManagedObjectContext){
        let currentYear = Calendar.current.component(.year, from: Date())
                self.releasedYears = Array(2000...currentYear).reversed()
        
        self.modelContext = context
        fetchMyList()
    }
    
    var currentIndex: Int = 0{
        didSet{
            if currentIndex < movies.count{
                movieCurrent = nil
            }
        }
    }
    
    func selectYear(_ year: Int){
        selectedYears = year
    }
    
    var filteredMovie: [Movie] {
        let allMovies = Set(
        top10Movies +
        newReleaseMovies +
        upcomingMovies +
        popularMoviesAll +
        upcomingMoviesAll +
        nowPlayingMovies
        
        )
        
        if searchMovie.isEmpty {
            return Array(allMovies)
        } else {
            return allMovies.filter{
                $0.title!.lowercased().contains(searchMovie.lowercased())
            }
        }
    }
    
    var filterTopratedMovie: [Movie]{
        if searchTopratedMovies.isEmpty{
            return upcomingMoviesAll
        }else{
            return upcomingMoviesAll.filter{
                $0.title!.lowercased().contains(searchTopratedMovies.lowercased())
            }
        }
    }
    
    var filterPopularMovie: [Movie]{
        if searchPopularMovies.isEmpty{
            return popularMoviesAll
        }else {
            return popularMoviesAll.filter{
                $0.title!.lowercased().contains(searchPopularMovies.lowercased())
            }
        }
    }
    
    
    func fetchMovies() async {
        await withTaskGroup(of: Void.self) { group in
            
            group.addTask {
                do {
                    let nowPlaying = try await NetworkManager.shared.fetchNowPlaying()
                    DispatchQueue.main.async {
                        self.nowPlayingMovies = nowPlaying
                    }
                } catch {
                    print("Failed to fetch now playing:", error.localizedDescription)
                }
            }
            
            group.addTask {
                do {
                    let popular = try await NetworkManager.shared.fetchPopular()
                    DispatchQueue.main.async {
                        self.featuredMovie = popular.first
                        self.top10Movies = Array(popular.prefix(10))
                    }
                } catch {
                    print("Failed to fetch popular:", error.localizedDescription)
                }
            }
            
            group.addTask {
                do {
                    let upcoming = try await NetworkManager.shared.fetchUpcoming()
                    DispatchQueue.main.async {
                        self.upcomingMovies = Array(upcoming.prefix(10))
                    }
                } catch {
                    print("Failed to fetch upcoming:", error.localizedDescription)
                }
            }
        }
    }
    
    func fetchSeeAllPopular() async{
        do {
            let popular = try await NetworkManager.shared.fetchPopularAll()
            DispatchQueue.main.async {
               
                self.popularMoviesAll = Array(popular.prefix(50))
            }
        } catch {
            print("Failed to fetch popular:", error.localizedDescription)
        }
    }
    
    func fetchUpcomingSeeAll() async {
        do{
            let upcoming = try await NetworkManager.shared.fetchUpcomingAll()
            DispatchQueue.main.async {
                self.upcomingMoviesAll = Array(upcoming.prefix(50))
                
            }
        }catch{
            print("Failed to fetch upcoming", error.localizedDescription)
        }
        
    }
    func movieDetails(movieID: Int) async throws -> MovieDetails {
        let details = try await NetworkManager.shared.fetchMovieDetails(movieID: movieID)
        self.selectedMovies = details
        return details
    }
    
    func fetchTrailer(movieID: Int) async {
        do {
            let videos = try await NetworkManager.shared.fetchMovieVideos(movieID: movieID)
            
            if let trailer = videos.first(where: { $0.type == "Trailer" && $0.site == "YouTube" }) {
                await MainActor.run {
                    self.selectedVideoKey = trailer.key
                    self.showTrailer = true
                }
            } else if let teaser = videos.first(where: { $0.site == "YouTube" }) {

                await MainActor.run {
                    self.selectedVideoKey = teaser.key
                    self.showTrailer = true
                }
            } else {
                print("No playable YouTube videos found")
            }
        } catch {
            print("Failed to fetch trailer:", error.localizedDescription)
        }
    }
    
    func fetchReviews(for movieID: Int) async{
        do{
            let response = try await NetworkManager.shared.fetch("/movie/\(movieID)/reviews", type: ReviewResponse.self)
            print("Reviews Json:", response.results ?? [])
            await MainActor.run {
                self.review = response.results ?? []
            }
        }catch{
            print("Reviews error:", error.localizedDescription)
            self.review = []
        }
    }
    
    func fetchCredits(for movieID: Int) async {
        do {
            let response = try await NetworkManager.shared.fetch("/movie/\(movieID)/credits", type: CreditsResponse.self)
            await MainActor.run{
                self.crew = response.crew ?? []
                self.cast = response.cast ?? []
            }
        }catch{
            print("Cast error: ", error.localizedDescription)
            self.cast = []
            self.crew = []
        }
    }
    
// * ----------------------------- CoreData ------------------------------- *
    
    
    func addToMyList(movie: Movie){
        let entity = MovieModelCD(context: modelContext)
        entity.id = Int64(movie.id)
        entity.title = movie.title ?? "no name"
        entity.overview = movie.overview ?? ""
        entity.posterPath = movie.posterPath ?? ""
        
        save()
        fetchMyList()
    }
    
    func addToMylistDetails(movieDetails: MovieDetails){
        let entity = MovieModelCD(context: modelContext)
        entity.id = Int64(movieDetails.id)
        entity.title = movieDetails.title ?? "no name"
        entity.overview = movieDetails.overview ?? ""
        entity.posterPath = movieDetails.posterPath ?? ""
        
        save()
        fetchMyList()
    }
    
    func removeFromMylist(movieID: Int) {
        if let entity = movies.first(where: { $0.id == Int64(movieID) }) {
            modelContext.delete(entity)
            save()
            fetchMyList()
        }
    }
    func fetchMyList(){
        let request: NSFetchRequest<MovieModelCD> = MovieModelCD.fetchRequest()
        if let result = try? modelContext.fetch(request){
            self.movies = result
        }
    }
    
    func deleteMovie(at offsets: IndexSet) {
            for index in offsets {
                let movie = movies[index]
                removeFromMylist(movieID: Int(movie.id))
            }
        }
    
    private func save(){
        do{
            try modelContext.save()
        }catch{
            print("error", error.localizedDescription)
        }
    }
    
    func isBookmarkedMovie(_ movie: Movie) -> Bool {
        return movies.contains { $0.id == Int64(movie.id) && $0.isBookmarked }
    }
    
    func isBookmarkedMovieDetails(_ movie: MovieDetails) -> Bool{
        return movies.contains{ $0.id == Int64(movie.id) && $0.isBookmarked}
    }
    
    func toggleBookmarkDetails(for movie: MovieDetails){
        let request: NSFetchRequest<MovieModelCD> = MovieModelCD.fetchRequest()
        request.predicate = NSPredicate(format: "id == %d", movie.id)
        
        do {
            let result = try modelContext.fetch(request)
            
            if let existing = result.first{
                existing.isBookmarked.toggle()
                try modelContext.save()
                fetchMyList()
                
                print(existing.isBookmarked ? "Bookmarked" : "Unbookmarked")
            }else {
                let newMovie = MovieModelCD(context: modelContext)
                newMovie.id = Int64(movie.id)
                newMovie.title = movie.title
                newMovie.posterPath = movie.posterPath
                newMovie.overview = movie.overview
                newMovie.voteAverage = movie.voteAverage ?? 0
                newMovie.isBookmarked = true
                
                try modelContext.save()
                fetchMyList()
            }
        }catch{
                print("Error:", error.localizedDescription)
            }
    }
   
    func toggleBookmark(for movie: Movie) {
        let request: NSFetchRequest<MovieModelCD> = MovieModelCD.fetchRequest()
        request.predicate = NSPredicate(format: "id == %d", movie.id)
        
        do {
            let result = try modelContext.fetch(request)
            
            if let existing = result.first {
                existing.isBookmarked.toggle()
                try modelContext.save()
                fetchMyList()
                
                print(existing.isBookmarked ? "Bookmarked" : "UnBookmarked")
                
            } else {
                let newMovie = MovieModelCD(context: modelContext)
                newMovie.id = Int64(movie.id)
                newMovie.title = movie.title
                newMovie.posterPath = movie.posterPath
                newMovie.overview = movie.overview
                newMovie.voteAverage = movie.voteAverage ?? 0
                newMovie.isBookmarked = true
                
                try modelContext.save()
                fetchMyList()
            }
        } catch {
            print("Bookmark toggle error:", error.localizedDescription)
        }
    }
}
