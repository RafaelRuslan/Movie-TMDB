//
//  EditProfileTextfieldView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 10.09.25.
//

import SwiftUI

struct EditProfileTextfieldView: View {
    @StateObject private var vm = EditProfileViewModel()
    @AppStorage("fullName") private var fullName: String = ""
    @AppStorage("firstName") private var firstName: String = ""
    @AppStorage("email") private var email: String = ""
    @State private var showAlert = false
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var langVM: LanguageManager
    
    var body: some View {
        VStack(spacing: 20){
            TextField(L10n.editProfileEnterFullname(langVM.selectedLanguage), text: $fullName)
                .textfieldModify()
            TextField(L10n.editProfileEnterFirstname(langVM.selectedLanguage), text: $firstName)
                .textfieldModify()

                TextField(
                    "\(L10n.editProfileEnterEmail(langVM.selectedLanguage))                                                       📩",
                    text: $email)
            .textfieldModify()
            HStack{
                Picker("", selection: $vm.selectedCountryNumber){
                    ForEach(vm.countriesNumber, id: \.self){ country in
                        Text(country)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 100)
                
                TextField(L10n.editProfilePhoneNumber(langVM.selectedLanguage), text: $vm.phoneNumber)
                    .keyboardType(.numbersAndPunctuation)
                    .onChange(of: vm.phoneNumber) {
                        vm.phoneNumber = vm.phoneNumber.filter{ "0123456789".contains($0) }
                    }
                    
                
                
            }
            .textfieldModify()
            HStack {
                Menu {
                    ForEach(vm.gender, id: \.self) { gen in
                        Button(gen) {
                            vm.selectionGender = gen
                        }
                    }
                } label: {
                    HStack {
                        Text(vm.selectionGender.isEmpty ? L10n.editProfileSelectGender(langVM.selectedLanguage) : vm.selectionGender)
                            .foregroundColor(vm.selectionGender.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 10)
                    .textfieldModify()
                }
            }
            HStack {
                Menu {
                    ForEach(vm.countryNames, id: \.self) { name in
                        Button(name) {
                            vm.selectedCountryName = name
                        }
                    }
                } label: {
                    HStack {
                        Text(vm.selectedCountryName.isEmpty ? L10n.editProfileSelectCountry(langVM.selectedLanguage) : vm.selectedCountryName)
                            .foregroundColor(vm.selectedCountryName.isEmpty ? .gray : .black)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 10)
                    .textfieldModify()
                }
            }
            Button{
               showAlert = true
            }label: {
                Text(L10n.editProfileUpdate(langVM.selectedLanguage))
                    .foregroundStyle(.white)
                    .background(
                        Color.red
                            .frame(width: 350, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    )
            }
            .padding()
            .alert(L10n.editProfileAlertSuccess(langVM.selectedLanguage), isPresented: $showAlert) {
                Button(L10n.editProfileAlertMessageOk(langVM.selectedLanguage)){
                    dismiss()
                }
            }message: {
                Text(L10n.editProfileProfileSaved(langVM.selectedLanguage))
            }
        }
    }
}

#Preview {
    EditProfileTextfieldView()
        .environmentObject(LanguageManager())
}
