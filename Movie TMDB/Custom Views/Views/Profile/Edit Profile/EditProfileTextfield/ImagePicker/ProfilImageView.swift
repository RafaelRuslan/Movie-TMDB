//
//  ProfilImageView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 10.09.25.
//

import SwiftUI
import PhotosUI

struct ProfilImageView: View {
    @State private var profilImage: UIImage? = nil
    @State private var showImagePicker = false
    @AppStorage("profileImageData") private var profileImageData: Data = Data()
    
    var body: some View {
        ZStack {
            if let profilImage {
                Image(uiImage: profilImage)
                    .resizable()
                    .scaledToFill()
            } else if let uiImage = UIImage(data: profileImageData) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
            } else {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(.gray.opacity(0.6))
            }
        }
        .imageStyle()
        .onTapGesture {
            showImagePicker = true
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(selectedImage: $profilImage)
        }
        .onChange(of: profilImage) {
            let data = profilImage?.jpegData(compressionQuality: 0.8)
        }
    }
}

#Preview {
    ProfilImageView()
}
