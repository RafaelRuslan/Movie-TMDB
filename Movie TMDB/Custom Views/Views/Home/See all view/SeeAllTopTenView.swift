//
//  SeeAllTopTenView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 17.09.25.
//

import SwiftUI
import CoreData

struct SeeAllTopTenView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var vm: MoviesViewModel
    @EnvironmentObject private var langVm: LanguageManager
    @State private var selectedMovie: Movie?
    let columns = [GridItem(.adaptive(minimum: 150), spacing: 10)]
    
    var body: some View {
        VStack{
            if vm.isSearching {
                TextField("🔍 Search", text: $vm.searchPopularMovies)
                    .searchSeeAllStyle()
            }
            ScrollView{
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(vm.filterPopularMovie, id: \.id){ movie in
                        ZStack(alignment: .topLeading){
                            SeeAllPosterView(path: movie.posterPath)
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .onTapGesture {
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
                    vm.fetchSeeAllPopular()
                }
            }
        }
        
        .sheet(isPresented: $vm.showTrailer) {
            if let key = vm.selectedVideoKey {
                YouTubeView(videoKey: key)
            }
        }
        .navigationDestination(item: $selectedMovie){ movie in
            DetailsView(movieID: movie.id)
                .environmentObject(langVm)
                .environmentObject(vm)
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
                vm.isSearching.toggle()
            }label: {
                Image(systemName: vm.isSearching ? "xmark.circle.fill" : "magnifyingglass")
                    .resizable()
                    .searchImageStyle()
            }
        }
    }
}

//#Preview {
//    let persistenceController = PersistenceController.shared
//    SeeAllTopTenView(movie: [Movie(id: 1, title: "", posterPath: "", overview: "", voteAverage: 1)], onSelect: "")
//        .environmentObject(LanguageManager())
//        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
//}
