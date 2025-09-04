//
//  NotificationViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 13.09.25.
//

import SwiftUI
import UserNotifications

class NotificationViewModel: ObservableObject {
    private let langVM: LanguageManager

    @Published var toggles: [String: Bool] = [:] {
        didSet { saveToggles() }
    }

    private let defaultsKey = "NotificationToggles"

    init(langVM: LanguageManager) {
        self.langVM = langVM
        loadToggles()
    }

    func saveToggles() {
        if let data = try? JSONEncoder().encode(toggles) {
            UserDefaults.standard.set(data, forKey: defaultsKey)
        }
    }

    func loadToggles() {
        if let data = UserDefaults.standard.data(forKey: defaultsKey),
           let loaded = try? JSONDecoder().decode([String: Bool].self, from: data) {
            toggles = loaded
        } else {
            toggles = notificationKeys.reduce(into: [:]) { $0[$1] = false }
        }
    }
    var notificationKeys: [String] {
        [
            L10n.generalNotification(langVM.selectedLanguage),
            L10n.newArrival(langVM.selectedLanguage),
            L10n.newServiceAvailable(langVM.selectedLanguage),
            L10n.newReleaseMovie(langVM.selectedLanguage),
            L10n.appUpdates(langVM.selectedLanguage),
            L10n.subscription(langVM.selectedLanguage)
        ]
    }
    
    func setupToggles() {
        toggles = notificationKeys.reduce(into: [:]) { dict, key in
            dict[key] = false
        }
    }
    
    func scheduleDailyNotification(for key: String, hour: Int, minute: Int) {
        let content = UNMutableNotificationContent()
        
        switch key {
        case L10n.generalNotification(langVM.selectedLanguage):
            content.title = "General Notification"
            content.body = "Check out the latest updates!"
            
        case L10n.newArrival(langVM.selectedLanguage):
            content.title = "New Arrival"
            content.body = "New movies are now available!"
            
        case L10n.newServiceAvailable(langVM.selectedLanguage):
            content.title = "New service available"
            content.body = "Discover new features and services!"
            
        case L10n.newReleaseMovie(langVM.selectedLanguage):
            content.title = "New release movie"
            content.body = "A new movie in your favorite genre is out!"
            
        case L10n.appUpdates(langVM.selectedLanguage):
            content.title = "App updates"
            content.body = "Check out the latest app version!"
            
        case L10n.subscription(langVM.selectedLanguage):
            content.title = "Subscription"
            content.body = "Important information about your subscription!"
            
        default:
            content.title = "Notification"
            content.body = "You have a new update"
        }
       
        content.sound = .default
        
        var dateComponents = DateComponents()
        dateComponents.hour = hour
        dateComponents.minute = minute
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let identifier = key.replacingOccurrences(of: " ", with: "_")
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request){ error in
            if let error = error{
                print("Error scheduling notification: \(error.localizedDescription)")
            }else {
                print("Alarm for \(hour):\(minute)")
            }
        }
    }
    
    func requestNotificationPermission(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted{
                print("notifications allowed")
            }else {
                print("notifications denied")
            }
        }
    }
    
    func cancelNotification(for key: String){
        let identifier = key.replacingOccurrences(of: " ", with: "_")
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [identifier])
    }
}
