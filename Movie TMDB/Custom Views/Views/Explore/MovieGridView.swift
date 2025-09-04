//
//  MovieGridView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 18.09.25.
//

import SwiftUI
import CoreData

struct MovieGrid: View {
    
    @EnvironmentObject private var movieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    let movies: [Movie]
    let columns = [GridItem(.adaptive(minimum: 150), spacing: 10)]
    @State private var selectedMovie: Movie?
        
    var body: some View {
        LazyVGrid(columns: columns, spacing: 12) {
            ForEach(movies, id: \.id) { movie in
                ZStack(alignment: .topLeading){
                    SeeAllPosterView(path: movie.posterPath)
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {
                            selectedMovie = movie
                        }
                    Text("\( movie.voteAverage ?? 0, specifier: "%.1f")")
                    .averageStyle()
                  
                }
            }
        }
        .navigationDestination(item: $selectedMovie) { movie in
            DetailsView(movieID: movie.id)
                .environmentObject(movieVM)
                .environmentObject(langVM)
        }
    }
}

#Preview {
    let persistenceController = PersistenceController.shared
    MovieGrid(movies: [Movie(id: 1, title: "", posterPath: "", overview: "", voteAverage: 1)])
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
        .environmentObject(LanguageManager())
}
