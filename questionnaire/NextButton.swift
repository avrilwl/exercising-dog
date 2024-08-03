//
//  NextButton.swift
//  questionnaire
//
//  Created by Li Jiansheng on 3/8/24.
//

import SwiftUI

struct NextButton: View {
    
    @Binding var questionNumber: Int
    
    var body: some View {
        Button(action: {
            questionNumber += 1
        }) {
            Text("next")
                .frame(width: 120, height: 45)
                .font(.system(size: 30))
                .foregroundColor(.black)
                .background(Color.blue)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 3)
                )
        }
    }
}
