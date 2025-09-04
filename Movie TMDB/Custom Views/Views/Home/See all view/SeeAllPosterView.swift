//
//  SeeAllPosterView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 17.09.25.
//

import SwiftUI

struct SeeAllPosterView: View {
    
    let path: String?
    
    var body: some View {
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(path ?? "")")){ phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: 50, height: 50)
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            case .failure(_):
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            @unknown default:
                EmptyView()
            }
            
            
        }

    }
}

#Preview {
    SeeAllPosterView(path: "")
}
