//
//  FeaturedMoviesView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 05.09.25.
//

import SwiftUI

struct FeaturedMoviesView: View {
    let movie: Movie
    @EnvironmentObject private var movieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @State private var movieDT: MovieDetails? = nil
    @State private var showVideo = false
    @State private var showMyList = false
    
    var body: some View {
        ZStack {
            MoviePosterView(path: movie.posterPath, isBackground: true)
                .overlay(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
            
            VStack {
                if movieVM.isSearching {
                    TextField("🔍 search", text: $movieVM.searchMovie)
                        .searchSeeAllStyle()
                        .searchTextfieldStyle()
                }
                
                Spacer()
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button {
                        movieVM.isSearching.toggle()
                    } label: {
                        Image(systemName: movieVM.isSearching ? "xmark.circle.fill" : "magnifyingglass")
                            .font(.system(size: 25))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, 10)
                    
                    Button {
                        movieVM.toggleBookmark(for: movie)
                    }label: {
                        Image(systemName: movieVM.isBookmarkedMovie(movie) ? "heart.fill" : "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(movieVM.isBookmarkedMovie(movie) ? .red.mix(with: .orange, by: 0.53) : .white)
                            .scaleEffect(movieVM.isBookmarkedMovie(movie) ? 1.4 : 1)
                            .animation(.spring(response: 0.55, dampingFraction: 0.6), value: movieVM.isBookmarkedMovie(movie))
                            
                    }
                    .padding(.top, 10)
                }
                .padding(.top, 30)
                .padding(.trailing, 16)
                
                Spacer()
                
               
                VStack(alignment: .leading, spacing: 8) {
                    
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
                        
                        Button {
                            movieVM.addToMyList(movie: movie)
                        } label: {
                            Label(L10n.localizedMyList(langVM.selectedLanguage), systemImage: "plus")
                                .myListStyle()
                        }
                    }
                }
                .padding(.leading, 6)
                .padding(.bottom, 6)
            }
        }
        .sheet(isPresented: $movieVM.showTrailer) {
            if let key = movieVM.selectedVideoKey{
                YouTubeView(videoKey: key)
                    .edgesIgnoringSafeArea(.all)
            }else{
                Text("trailer not found")
            }
        }
    }
}

#Preview {
    
    let persistenceController = PersistenceController.shared
    FeaturedMoviesView(movie: Movie(id: 0, title: "", posterPath: "", overview: "", voteAverage: 0))
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
        .environmentObject(LanguageManager())
}
