//
//  ExploreFilterPageView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 18.09.25.
//

import SwiftUI
import CoreData

struct ExploreFilterPageView: View {
    @EnvironmentObject private var movieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    
    @State private var selectedCategory: Movie.MovieCategory = .popular
    @State private var selectedGenre: Genre?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20){
                Text("Genre")
                    .font(.title)
                HStack(spacing: 10) {
                    ForEach(movieVM.genres, id: \.id) { genre in
                        Button {
                            if selectedGenre?.id == genre.id {
                                selectedGenre = nil
                            } else {
                                selectedGenre = genre
                            }
                        } label: {
                            Text(genre.name)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(selectedGenre?.id == genre.id ? Color.red : Color.gray.opacity(0.3))
                                .foregroundColor(selectedGenre?.id == genre.id ? .white : .primary)
                                .cornerRadius(12)
                        }
                    }
                }
            }
            .padding(.leading, 5)
            .padding(.top)
        }
        Text("Release Year")
            .font(.headline)
            .padding(.horizontal)
            .padding(.top, 10)
        
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80), spacing: 12)], spacing: 12) {
                ForEach(movieVM.releasedYears, id: \.self) { year in
                    Button {
                        movieVM.selectYear(year)
                    } label: {
                        Text(String(year))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(
                                movieVM.selectedYears == year
                                ? Color.red
                                : Color.gray.opacity(0.3)
                            )
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding(.top, 10)
        
        Spacer()
        Button {
            
        } label: {
            Text("Apply")
                .applyStyle()
        }
    }
}

#Preview {
    let persistenceController = PersistenceController.shared
    ExploreFilterPageView()
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
        .environmentObject(LanguageManager())
}
