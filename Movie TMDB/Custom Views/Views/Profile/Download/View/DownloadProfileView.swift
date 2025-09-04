//
//  DownloadProfileView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI

struct DownloadProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var isWifi = false
    @EnvironmentObject private var langVM: LanguageManager
    
    @State private var components: [DownloadModel] = [
        DownloadModel(iconName: "square.and.arrow.down.fill", title: L10n.smartDownloads(_:)),
        DownloadModel(iconName: "video.circle.fill", title: L10n.videoQuality(_:)),
        DownloadModel(iconName: "microphone.square.fill", title: L10n.audioQuality(_:)),
        DownloadModel(iconName: "trash.square.fill", title: L10n.deleteAllDownloads(_:)),
        DownloadModel(iconName: "trash.circle.fill", title: L10n.deleteCache(_:))
        
    ]
    var body: some View {
        Form{
            HStack{
                Image(systemName: "wifi.circle.fill")
                    .font(.system(size: 20))
                    .foregroundStyle(.blue)
                Text(L10n.wifiOnly(langVM.selectedLanguage))
                    .foregroundStyle(.primary)
                Spacer()
                Toggle("", isOn: $isWifi)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                
            }
                ForEach($components) { $component in
                    HStack{
                    Image(systemName: component.iconName)
                        .font(.system(size: 20))
                        .foregroundStyle(.blue)
                        Text(
                            component.title(langVM.selectedLanguage)
                        )
                            .foregroundStyle(.primary)
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
        ToolbarItem(placement: .principal) {
            Text(L10n.downloadToolbar(langVM.selectedLanguage))
                .foregroundStyle(.primary)
                .font(.title)
        }
        ToolbarItem(placement: .topBarLeading) {
            Button{
                dismiss()
            }label: {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.primary)
            }
        }
    }
}

#Preview {
    DownloadProfileView()
        .environmentObject(LanguageManager())
}
