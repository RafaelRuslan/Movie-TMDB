//
//  Movie_TMDBApp.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import SwiftUI
import FirebaseCore
import CoreData
import FBSDKCoreKit
import UserNotifications

class AppDelegateFacebook: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        return true
    }

    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {
        ApplicationDelegate.shared.application(app, open: url, options: options)
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct Movie_TMDBApp: App {
    init() {
        let context = PersistenceController.shared.container.viewContext
        _movieVM = StateObject(wrappedValue: MoviesViewModel(context: context))
        movieID = 1
        self.path = path
        requestNotificationPermission()
    }
    
    @StateObject private var loginVM = LoginViewModel()
    @StateObject private var movieVM: MoviesViewModel
    @StateObject private var FAQVm = FAQViewModel()
    @StateObject private var LangVM = LanguageManager()
    @AppStorage("colorScheme") private var colorScheme = false
    @AppStorage("isAuthorized") private var isAuthorized = false
    let movieID: Int
    @State private var path: [Movie] = []
    let persistenceController = PersistenceController.shared
    @UIApplicationDelegateAdaptor(AppDelegateFacebook.self) var delegateFacebook
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path){
                if isAuthorized{
                    MainView(path: $path, movieID: 1)
                        .environmentObject(movieVM)
                        .environmentObject(FAQVm)
                        .environmentObject(LangVM)
                        .environmentObject(loginVM)
                        .preferredColorScheme(colorScheme ? .dark : .light)
                        .environment(\.managedObjectContext, persistenceController.container.viewContext)
                        .environmentObject(movieVM)

                }else {
                    BoardView(movieID: 1, path: $path)
                        .environmentObject(movieVM)
                        .environmentObject(FAQVm)
                        .environmentObject(LangVM)
                        .environmentObject(loginVM)
                        .preferredColorScheme(colorScheme ? .dark : .light)
                        .environment(\.managedObjectContext, persistenceController.container.viewContext)
                        .environmentObject(movieVM)
                    

                }
            }
        }
    }
    
    private func requestNotificationPermission() {
           UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
               if let error = error {
                   print("Notification permission error: \(error.localizedDescription)")
               } else {
                   print("Permission granted: \(granted)")
               }
           }
       }
}
