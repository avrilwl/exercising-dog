//
//  QuestionnaireView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct QuestionnaireView: View {
    @State var questions: [Question] = [Question(question: "What is your age?", options: ["13-14", "15-16", "17-19"]), Question(question: "What is your fitness goal?", options: ["lose weight", "build muscle strength", "keep fit"]), Question(question: "How often do you exercise?", options: ["1-2", "3-4", "5+"]), Question(question: "How many times per week would you like to train?", options: ["1-2", "3-4", "5+"]), Question(question: "How long would you like your workouts to be?", options: ["10-15 min", "20-25 min", "30-45 min"]), Question(question: "Do you struggle with any of the following?", options: ["sensitive back", "sensitive knees", "none of the above"]), Question(question: "How would you describe your typical day?", options: ["i spend most of my time sitting", "i take active breaks", "i am on my feet all day long"])]
    @State var questionNumber = 0
    @State var selectedButtonIndex: Int?
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                QuestionView(question: questions[questionNumber], questionNumber: $questionNumber, selectedButtonIndex: $selectedButtonIndex)
                NextButton(questionNumber: $questionNumber, selectedButtonIndex: $selectedButtonIndex)
            }
        }
    }
}

#Preview {
    QuestionnaireView()
}

