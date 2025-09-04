//
//  BoardView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 22.09.25.
//

import SwiftUI
import CoreData

struct BoardView: View {
    @EnvironmentObject private var MovieVM: MoviesViewModel
    @EnvironmentObject private var loginVM: LoginViewModel
    @EnvironmentObject private var langVM: LanguageManager
    @EnvironmentObject private var FAQvm: FAQViewModel
    @State private var showLetsYouInView = false
    @AppStorage("colorScheme") private var colorScheme = false
    let movieID: Int
    @Binding var path: [Movie]
    var body: some View {
        ScrollView{
            ZStack{
                Image(.boardingPoster)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack(alignment: .center, spacing: 15){
                    Spacer()
                    Text("Welcome to Mova")
                        .font(.title)
                        .bold()
                        .font(.system(size: 40))
                        .foregroundStyle(colorScheme ? .black : .white)
                    Text("The best movie streaming app of the century to make your days great !")
                        .font(.title2.weight(.bold))
                        .foregroundStyle(colorScheme ? .black : .white)
                    Spacer()
                    Button{
                        showLetsYouInView = true
                    }label: {
                        Text("Get Started")
                            .font(.title2)
                            .foregroundStyle(colorScheme ? .black : .white)
                            .background(
                                Color.red
                                    .frame(width: 380, height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            )
                            .padding(.horizontal, 40)
                    }
                    .padding(.bottom, 40)
                }
            }
        }
        .navigationDestination(isPresented: $showLetsYouInView){
            LetsYouInView(movieID: movieID, path: $path)
                .environmentObject(langVM)
                .environmentObject(loginVM)
                .environmentObject(MovieVM)
                .environmentObject(FAQvm)
        }
        .ignoresSafeArea()
    }
}
//
//#Preview {
//    let context = PersistenceController.shared
//    BoardView(movieID: 1)
//        .environmentObject(MoviesViewModel(context: context.container.viewContext))
//        .environmentObject(LanguageManager())
//        .environmentObject(LoginViewModel())
//        .environmentObject(FAQViewModel())
//}
