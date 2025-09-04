//
//  ShareButtonView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 30.09.25.
//

import SwiftUI

struct ShareButtonView: View {
    @Environment(\.colorScheme) private var colorScheme
    @State private var isShareShowing = false
    
    var body: some View {
        Button{
            isShareShowing = true
            
        }label: {
            Image(systemName: "paperplane.fill")
                .foregroundStyle(colorScheme == .dark ? .white : .black)
                .padding(.top, 5)
        }
        .sheet(isPresented: $isShareShowing) {
            ShareSheet(activityItem: [ "Hi, I want to shared this link"] )
        }
        
    }
}

#Preview {
    ShareButtonView()
}
