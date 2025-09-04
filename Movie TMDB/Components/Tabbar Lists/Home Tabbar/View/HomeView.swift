//
//  HomeView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import SwiftUI
import CoreData

struct HomeView: View {
    @EnvironmentObject private var vm: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @Binding  var path: [Movie]
    @State private var selectedMovie: Movie?
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 40) {
                    
                    if let featured = vm.featuredMovie {
                        FeaturedMoviesView(movie: featured)
                            .frame(maxWidth: .infinity)
                            .frame(height: 500)
                            .padding(.top, 5)
                    }
                }
                
                TopTenMoviesView(
                    movies: vm.top10Movies) { movie in
                        selectedMovie = movie
                    }
                .padding(.top, 65)
                
                Divider()
                
                UpcomingView(movies: vm.upcomingMovies) { movie in
                    selectedMovie = movie
                }
            }
            .padding(.horizontal, 10)
            .navigationDestination(item: $selectedMovie) { movie in
                DetailsView(movieID: movie.id)
                    .environmentObject(vm)
                    .environmentObject(langVM)
            }
            .onAppear {
                Task {
                    await vm.fetchMovies()
                }
            }
        }
}
//#Preview {
//    let persistenceController = PersistenceController.shared
//    HomeView(path: $path)
//        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
//        .environmentObject(LanguageManager())
//}
