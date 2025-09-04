//
//  ShareSheet.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 30.09.25.
//

import SwiftUI

struct ShareSheet: UIViewControllerRepresentable{
    
    var activityItem: [Any]
    var applicationActivites: [UIActivity]? = nil
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        
    }
    
    func makeUIViewController(context: Context) ->  UIActivityViewController {
        UIActivityViewController(activityItems: activityItem, applicationActivities: applicationActivites)
    }
}
