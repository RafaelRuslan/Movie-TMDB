//
//  MoviePosterView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import SwiftUI

struct MoviePosterView: View {
    let path: String?
    var isBackground: Bool = false
    
    var body: some View {
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(path ?? "")")) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(
                        maxWidth: isBackground ? nil : 120,
                        maxHeight: isBackground ? nil : 180
                    )
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: isBackground ? .infinity : 120,
                           maxHeight: isBackground ? .infinity : 180)
                    .clipped()
                    .cornerRadius(isBackground ? 0 : 13)
            case .failure:
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: isBackground ? 250 : 120,
                           maxHeight: isBackground ? 230 : 180)
                    .foregroundColor(.gray)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    MoviePosterView(path: "")
}
