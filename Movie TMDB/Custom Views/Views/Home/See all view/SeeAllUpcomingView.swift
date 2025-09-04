//
//  SeeAllUpcomingView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 18.09.25.
//

import SwiftUI
import CoreData

struct SeeAllUpcomingView: View {
    
    @EnvironmentObject private var MovieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @Environment(\.dismiss) private var dismiss
    @State private var selectedMovie: Movie?

    let columns = [GridItem(.adaptive(minimum: 150), spacing: 10)]
    
    var body: some View {
        VStack {
            if MovieVM.isSearching {
                TextField("🔍 Search", text: $MovieVM.searchTopratedMovies)
                    .searchSeeAllStyle()
            }
            
            ScrollView{
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(MovieVM.filterTopratedMovie, id: \.id){ movie in
                       
                        ZStack(alignment: .topLeading){
                            SeeAllPosterView(path: movie.posterPath)
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .onTapGesture{
                                    selectedMovie = movie
                                }
                            Text("\(movie.voteAverage ?? 0, specifier: "%.1f")")
                                .averageStyle()
                        }
                    }
                }
            }
            .onAppear{
                Task{
                    await
                    MovieVM.fetchUpcomingSeeAll()
                }
            }
        }
        .sheet(isPresented: $MovieVM.showTrailer) {
            if let key = MovieVM.selectedVideoKey {
                YouTubeView(videoKey: key)
            }
        }
        .navigationDestination(item: $selectedMovie){ movie in
            DetailsView(movieID: movie.id)
                .environmentObject(langVM)
                .environmentObject(MovieVM)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            toolbar
        }
    }
    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .topBarLeading) {
            Button{
                dismiss()
            }label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.primary)
            }
        }
        ToolbarItem(placement: .topBarTrailing) {
            Button{
                withAnimation{
                    MovieVM.isSearching.toggle()
                }
                
            }label: {
                Image(systemName: MovieVM.isSearching ? "xmark.circle.fill" : "magnifyingglass")
                    .resizable()
                    .searchImageStyle()
            }
        }
    }
}

