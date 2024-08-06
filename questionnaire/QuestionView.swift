//
//  QuestionView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 3/8/24.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    @State var questions: [Question] = [Question(question: "What is your age?", options: ["13-14", "15-16", "17-19"]), Question(question: "What is your fitness goal?", options: ["lose weight", "build muscle strength", "keep fit"]), Question(question: "How many times a week do you exercise?", options: ["0-2", "3-4", "5+"]), Question(question: "How many times a week would you like to train?", options: ["1-2", "3-4", "5+"]), Question(question: "How long would you like your workouts to be?", options: ["10-15 min", "20-25 min", "30-45 min"]), Question(question: "Do you struggle with any of the following?", options: ["sensitive back", "sensitive knees", "none of the above"]), Question(question: "How would you describe your typical day?", options: ["i spend most of my time sitting", "i take active breaks", "i am on my feet all day long"])]
    @Binding var questionNumber: Int
    @Binding var selectedButtonIndex: Int?
    
    var body: some View {
        VStack(alignment:.leading) {
            Text(question.question)
                .padding()
                .font(.system(size: 30))
            VStack(alignment: .leading) {
                ForEach(0..<questions[questionNumber].options.count) { index in
                                    Button(action: {
                                        self.selectedButtonIndex = index
                                    }) {
                                        Text(questions[questionNumber].options[index])
                                            .font(.system(size: 25))
                                            .padding()
                                            .foregroundColor(self.selectedButtonIndex == index ? .black : .black)
                                            .background(self.selectedButtonIndex == index ? Color.blue : Color.yellow)
                                            .cornerRadius(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 15)
                                                    .stroke(Color.black, lineWidth: 3)
                                            )
                                    }
                                }
                            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

            }
        
        }
    }

#Preview {
    QuestionView(question: Question(question: "kdlsafjkldsjfklasdjflksjdf", options: ["String","str"]), questionNumber: .constant(0), selectedButtonIndex: .constant(nil))
}
