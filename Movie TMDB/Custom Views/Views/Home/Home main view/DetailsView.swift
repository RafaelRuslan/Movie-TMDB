//
//  DetailsView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct DetailsView: View {
    let movieID: Int
  
    @EnvironmentObject var vm: MoviesViewModel
    @Environment(\.dismiss) private var dismiss

    @State private var movieDetails: MovieDetails? = nil

    var body: some View {
   
        Group {
            if let movie = movieDetails {
                ScrollView {
                    DetailsViewPosterView(movie: movie)
                        .padding()
                }
            } else {
                ProgressView("Loading...")
                    .onAppear {
                        Task {
                            do {
                                movieDetails = try await vm.movieDetails(movieID: movieID)
                            } catch {
                                print("Failed to fetch movie details:", error.localizedDescription)
                            }
                        }
                    }
            }
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
        ToolbarItem(placement: .principal) {
            Text(movieDetails?.title ?? "Unknown")
                .font(.title)
                .lineSpacing(2)
                .foregroundStyle(.primary)
        }
    }
}

