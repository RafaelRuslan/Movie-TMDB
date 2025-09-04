//
//  FAQViewModel.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 11.09.25.
//

import SwiftUI

class FAQViewModel: ObservableObject{
    @Published var selectedCategory: FAQCategory = .general
    @Published var expanded: UUID? = nil
    @Published var faqData: [FAQCategory: [FAQModel]] = [:]
    
    func loadFAQData(for language: AppLanguage){
        let generalFAQs: [FAQModel] = [
                FAQModel(
                    question: L10n.question1(language),
                    answer: L10n.answer1(language)
                ),
                FAQModel(
                    question: L10n.question2(language),
                    answer: L10n.answer2(language)
                )
            ]
        
        let accountFAQs: [FAQModel] = [
                FAQModel(
                    question: L10n.question3(language),
                    answer: L10n.answer3(language)
                ),
                FAQModel(
                    question: L10n.question4(language),
                    answer: L10n.answer4(language)
                )
            ]
        let serviceFAQs: [FAQModel] = [
                FAQModel(
                    question: L10n.question5(language),
                    answer: L10n.answer5(language)
                ),
                FAQModel(
                    question: L10n.question6(language),
                    answer: L10n.answer6(language)
                )
            ]
        let videoFAQs: [FAQModel] = [
                FAQModel(
                    question: L10n.question7(language),
                    answer: L10n.answer7(language)
                ),
                FAQModel(
                    question: L10n.question8(language),
                    answer: L10n.answer8(language)
                )
            ]
        self.faqData = [
            .general: generalFAQs,
            .account: accountFAQs,
            .service: serviceFAQs,
            .video: videoFAQs
        ]
    }
}
