//
//  CrewView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 28.09.25.
//

import SwiftUI

struct CrewView: View {
    @EnvironmentObject private var movieVM: MoviesViewModel
    let movieID: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Divider()
            Text("Crew")
                .font(.headline)
            if movieVM.crew.isEmpty {
                Text("no crew available")
                    .font(.title2)
            }else {
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack(spacing: 16){
                        ForEach(movieVM.crew.prefix(10), id: \.safeID) { crew in
                            VStack{
                                Text(crew.safeName)
                                    .font(.title)
                                    .bold()
                                Text(crew.job ?? "no data")
                                    .font(.headline)
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
    CrewView(movieID: 1)
        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
}
