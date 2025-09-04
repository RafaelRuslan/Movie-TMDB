//
//  MyListView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//
import SwiftUI
import CoreData

struct MyListView: View {
    @EnvironmentObject var movieVM: MoviesViewModel
    @EnvironmentObject private var langVm: LanguageManager
    @State private var selectedMovie: MovieModelCD?

    var body: some View {
        List {
            ForEach(movieVM.movies, id: \.self) { movie in
                HStack {
                    if let poster = movie.posterPath {
                        SeeAllPosterView(path: poster)
                            .scaledToFit()
                            .frame(width: 100, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                           
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.gray)
                    }
                    
                    Text(movie.title ?? "")
                        .onTapGesture {
                            selectedMovie = movie
                        }
                    Spacer()
                }
            }
            .onDelete(perform: movieVM.deleteMovie(at:))
        }
        .navigationDestination(item: $selectedMovie){ movie in
            MyListDetailsView(movieID: Int(Int64(movie.id)))
                .environmentObject(movieVM)
                .environmentObject(langVm)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            toolbar
        }
    }

    @ToolbarContentBuilder
    private var toolbar: some ToolbarContent{
        ToolbarItem(placement: .principal) {
            Text("My Favorite Movie List")
                .font(.title)
        }
    }
}
#Preview {
    let persistenceController = PersistenceController.shared
    MyListView()
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
        .environmentObject(LanguageManager())
}
