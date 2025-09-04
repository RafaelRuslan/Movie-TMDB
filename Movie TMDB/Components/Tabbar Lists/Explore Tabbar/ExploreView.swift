//
//  ExploreView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import SwiftUI
import CoreData

struct ExploreView: View {
 
    @EnvironmentObject private var MovieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @State private var showExploreFilterPage = false
    
    let movieID: Int
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 15) {
                HStack(spacing: 60){
                    TextField("🔍Search ", text: $MovieVM.searchMovie)
                        .searchStyle()
                    Button{
                        showExploreFilterPage = true
                    }label: {
                        Image(systemName: "distribute.vertical.center.fill")
                            .filterTabStyle()
                    }
                }
                MovieGrid(movies: MovieVM.filteredMovie)
            }
            .onAppear{
                    Task{
                        async let movieTask: () = MovieVM.fetchMovies()
                        async let moviePopular: () = MovieVM.fetchSeeAllPopular()
                        _ = await (movieTask, moviePopular)
                    }
                }
            }
        .sheet(isPresented: $showExploreFilterPage) {
            ExploreFilterPageView()
                .environmentObject(langVM)
                .environmentObject(MovieVM)
        }
    }
}

//#Preview {
//    let persistenceController = PersistenceController.shared
//    ExploreView(selectTab: Binding<1>, movieID: 1)
//        .environmentObject(LanguageManager())
//        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
//}
