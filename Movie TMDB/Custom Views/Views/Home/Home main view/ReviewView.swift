//
//  ReviewView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import SwiftUI

struct ReviewView: View {
    @EnvironmentObject private var movieVM: MoviesViewModel
    let movieID: Int
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Divider()
                Text("Reviews")
                    .font(.headline)
                
                if movieVM.review.isEmpty {
                    Text("No reviews available.")
                        .foregroundColor(.secondary)
                        .font(.subheadline)
                } else {
                    ForEach(movieVM.review) { review in
                        VStack(alignment: .leading, spacing: 8) {
                            Text(review.safeAuthor)
                                .font(.headline)
                            
                            Text(review.safeContent)
                                .font(.body)
                                .foregroundColor(.secondary)
                                .fixedSize(horizontal: false, vertical: true) // mətn sarılsın
                            
                            if !review.safeDate.isEmpty {
                                Text(review.safeDate)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }
                }
            }
            .padding(.horizontal)
        }
        .task {
            await movieVM.fetchReviews(for: movieID)
        }
    }
}

#Preview {
    let persistenceController = PersistenceController.shared
    ReviewView(movieID: 1)
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
}
