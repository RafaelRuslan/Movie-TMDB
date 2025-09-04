//
//  UpcomingView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 05.09.25.
//

import SwiftUI

struct UpcomingView: View {
    let movies: [Movie]
    let onSelect: (Movie) -> Void
   
    @State private var showSeeAll = false
    @EnvironmentObject private var MovieVm: MoviesViewModel
    @EnvironmentObject private var langVM: LanguageManager
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack{
                Text(L10n.localizedTopRated(langVM.selectedLanguage))
                    .font(.title2)
                    .bold()
                Spacer()
                Button(L10n.localizedSeeAll(langVM.selectedLanguage)){
                  
                    showSeeAll = true
                }
                .padding(.trailing, 10)
                .foregroundStyle(.red)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(movies, id: \.id) { movie in
                        VStack(alignment: .leading, spacing: 6) {
                            ZStack(alignment: .topLeading){
                                MoviePosterView(path: movie.posterPath)
                                    .frame(width: 120, height: 180)
                                    .onTapGesture {
                                        onSelect(movie)
                                    }
                                
                                Text("\(movie.voteAverage ?? 0, specifier: "%.1f")")
                                    .averageStyle()
                                Spacer()
                                Spacer()

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
            SeeAllUpcomingView()
                .environmentObject(langVM)
                .environmentObject(MovieVm)
        }
    }
}
