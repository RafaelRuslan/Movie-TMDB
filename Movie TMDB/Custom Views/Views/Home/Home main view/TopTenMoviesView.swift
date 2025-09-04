//
//  TopTenMoviesView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 05.09.25.
//

import SwiftUI

struct TopTenMoviesView: View {
    let movies: [Movie]
    let onSelect: (Movie) -> Void
 
    @EnvironmentObject private var MovieVM: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @State private var showSeeAll = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(L10n.localizedTop10MoviesThisWeek(langVM.selectedLanguage))
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button(L10n.localizedSeeAll(langVM.selectedLanguage)) {
                    showSeeAll = true
                }
                .foregroundStyle(.red)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(movies, id: \.id) { movie in
                        VStack(alignment: .leading, spacing: 6) {
                            ZStack(alignment: .topLeading) {
                                MoviePosterView(path: movie.posterPath)
                                    .frame(width: 120, height: 180)
                                    .onTapGesture {
                                        onSelect(movie)
                                    }
                                
                                Text("\(movie.voteAverage ?? 0, specifier: "%.1f")")
                                    .averageStyle()
                            }
                            
                            Text(movie.title ?? "")
                                .font(.caption)
                                .lineLimit(1)
                                .frame(width: 120, alignment: .leading)
                        }
                    }
                }
            }
        }
      
        .navigationDestination(isPresented: $showSeeAll) {
            SeeAllTopTenView()
                .environmentObject(langVM)
                .environmentObject(MovieVM)
        }
    }
}
