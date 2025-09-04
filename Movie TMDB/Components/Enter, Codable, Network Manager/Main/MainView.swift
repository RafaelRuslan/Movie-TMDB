//
//  MainView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 04.09.25.
//

import SwiftUI
import CoreData

struct MainView: View {
    @Environment(\.dismiss) private var dismiss
    @AppStorage("colorScheme") private var colorScheme = false
    @EnvironmentObject var vm: MoviesViewModel
    @EnvironmentObject var FAQVm: FAQViewModel
    @EnvironmentObject var langVM: LanguageManager
    @EnvironmentObject private var loginVM: LoginViewModel
    @State private var index = 0
    @Binding  var path: [Movie]
    let movieID: Int
    var body: some View {
        TabView(selection: $index){
            HomeView(path: $path)
                .tag(0)
                .tabItem {
                    Label {
                        Text(L10n.tabHome(langVM.selectedLanguage))
                    } icon: {
                        Image(systemName: "house.fill")
                            .foregroundColor(.primary)
                    }
                }
            ExploreView(movieID: movieID)
                .tag(1)
                .tabItem {
                    Label {
                        Text(L10n.tabExplore(langVM.selectedLanguage))
                    } icon: {
                        Image(systemName: "safari.fill")
                            .foregroundColor(.primary)
                    }
                }
            MyListView()
                .tag(2)
                .tabItem {
                    Label {
                        Text(L10n.tabMyList(langVM.selectedLanguage))
                    } icon: {
                        Image(systemName: "bolt.heart.fill")
                            .foregroundColor(.primary)
                    }
                }
            ProfileView()
                .tag(3)
                .tabItem {
                    Label {
                        Text(L10n.tabProfile(langVM.selectedLanguage))
                    } icon: {
                        Image(systemName: "person.crop.circle")
                            .foregroundColor(.primary)
                    }
                }
        }

        .navigationBarBackButtonHidden()
    }
   
}

//#Preview {
//    let persistenceController = PersistenceController.shared
//    MainView(movieID: 1)
//        .environmentObject(MoviesViewModel(context: persistenceController.container.viewContext))
//        .environmentObject(LanguageManager())
//        .environmentObject(FAQViewModel())
//        .environmentObject(LoginViewModel())
//}
