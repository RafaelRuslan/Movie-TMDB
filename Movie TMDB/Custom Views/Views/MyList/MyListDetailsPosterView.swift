//
//  MyListDetailsPosterView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import SwiftUI
import CoreData

struct MyListDetailsPosterView: View {
    @AppStorage("colorScheme") private var colorScheme = false
    @EnvironmentObject private var movieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
   
    let movie: MovieDetails
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                if let path = movie.posterPath {
                    AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(path)")) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity)
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.gray)
                        @unknown default:
                            EmptyView()
                        }
                    }
                }
                HStack(spacing: 20){
                    Text(movie.title ?? "no title")
                        .font(.title2)
                        .bold()
                    Spacer()
                    
                    Button {
                        movieVM.toggleBookmarkDetails(for: movie)
                    }label: {
                        Image(systemName: movieVM.isBookmarkedMovieDetails(movie) ? "heart.fill" : "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(movieVM.isBookmarkedMovieDetails(movie) ? .red.mix(with: .orange, by: 0.53) : .black)
                            .scaleEffect(movieVM.isBookmarkedMovieDetails(movie) ? 1.4 : 1)
                            .animation(.spring(response: 0.55, dampingFraction: 0.6), value: movieVM.isBookmarkedMovieDetails(movie))
                        
                    }
                    
                   ShareButtonView()
                    
                }
                HStack(spacing: 22){
                    Text("⭐️ \(movie.voteAverage ?? 0, specifier: "%.1f")")
                        .font(.title2)
                        .foregroundStyle(.red)
                    Text("\(String( movie.releaseDate ?? ""))")
                        .font(.title3)
                        .foregroundStyle(colorScheme ? .white : .black)
                    
                    Text(movie.originalLanguage ?? "no data")
                            .foregroundStyle(.red)
                            .font(.title2)
                }
                
                HStack(spacing: 20) {
                    Button {
                        Task{
                            await
                            movieVM.fetchTrailer(movieID: movie.id)
                        }
                    } label: {
                        Label(L10n.localizedPlay(langVM.selectedLanguage), systemImage: "play.circle.fill")
                            .playStyle()
                    }
                }
            }
            Divider()
                HStack(spacing: 12){
                    if let genres = movie.genres, !genres.isEmpty {
                        Text("Genre: \(genres.map { $0.name }.joined(separator: ", "))")
                            .font(.title2)
                            .foregroundColor(.secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            Divider()
            Text("About: \(movie.overview ?? "No data")")
                .multilineTextAlignment(.leading)
                .lineSpacing(5)
                .font(.title2)
            
        }
        .sheet(isPresented: $movieVM.showTrailer) {
            if let key = movieVM.selectedVideoKey{
                YouTubeView(videoKey: key)
                    .edgesIgnoringSafeArea(.all)
            }else{
                Text("trailer not found")
            }
        }
        .padding()
    }
}
#Preview {
    let persistenceController = PersistenceController.shared
    MyListDetailsPosterView(movie: MovieDetails(id: 0, title: "", overview: "", releaseDate: "", runtime: 1, voteAverage: 1, voteCount: 1, posterPath: "", backdropPath: "", genres: [Genre(id: 1, name: "")], originalLanguage: ""))
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
        .environmentObject(LanguageManager())
}
