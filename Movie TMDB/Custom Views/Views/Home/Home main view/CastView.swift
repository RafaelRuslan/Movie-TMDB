//
//  CastView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import SwiftUI
import CoreData

struct CastView: View {
    @EnvironmentObject private var movieVM: MoviesViewModel
    let movieID: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Divider()
            Text("Cast")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(movieVM.cast.prefix(10), id: \.safeID) { actor in
                        VStack {
                            if let path = actor.profilePath {
                                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w200\(path)")) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    Color.gray.opacity(0.3)
                                }
                                .frame(width: 100, height: 150)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            } else {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 150)
                                    .foregroundColor(.gray.opacity(0.6))
                            }
                            
                            Text(actor.safeName)
                                .font(.headline)
                                .frame(width: 100)
                                .multilineTextAlignment(.center)
                            
                            if let character = actor.character {
                                Text("as \(character)")
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                                    .frame(width: 100)
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
            }
        }
        .task {
            if movieVM.cast.isEmpty && movieVM.crew.isEmpty {
                await movieVM.fetchCredits(for: movieID)
            }
        }
    }
}
#Preview {
    let persistenceController = PersistenceController.shared
    CastView(movieID: 1)
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
}
