//
//  NotificationView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 07.09.25.
//

import SwiftUI
import UserNotifications

struct NotificationView: View {
    
    @EnvironmentObject private var langVM: LanguageManager
    @StateObject private var notVM =
    NotificationViewModel(
        langVM: LanguageManager()
    )
    @Environment(\.dismiss) private var dismiss
    
    init(langVM: LanguageManager) {
            _notVM = StateObject(wrappedValue: NotificationViewModel(langVM: langVM))
        }
    
    var body: some View {
        List {
            ForEach(notVM.notificationKeys, id: \.self) { key in
                Toggle( isOn: Binding(
                    get: { notVM.toggles[key, default: false] },
                    set: { newValue in
                        notVM.toggles[key] = newValue
                            if newValue{
                                notVM.scheduleDailyNotification(for: key, hour: 10, minute: 0)
                                notVM.scheduleDailyNotification(for: key, hour: 11, minute: 30)
                                
                            }else {
                                notVM.cancelNotification(for: key)
                        }
                    }
                )){
                    Text(key)
                        .font(.body)
                        .foregroundStyle(.primary)
                }
            }
            .toggleStyle(SwitchToggleStyle(tint: .green))
        }
        .onAppear{
            notVM.requestNotificationPermission()
            notVM.loadToggles()
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
            Text(L10n.notificationToolbar(langVM.selectedLanguage))
                .font(.title2)
                .foregroundStyle(.primary)
        }
    }
}

#Preview {
    NotificationView(langVM: LanguageManager())
        .environmentObject(LanguageManager())
}
