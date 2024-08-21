//
//  ExerciseDetailsView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 21/8/24.
//

import SwiftUI

struct ExerciseDetailsView: View {
    
    let exercise: Exercise
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.orange, .purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(exercise.name)
                    .font(.largeTitle)
                    .padding()
                
                Text(exercise.description)
                    .font(.system(size: 20))
                    .padding()
                
                Spacer()
            }
            .navigationTitle(exercise.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    ExerciseDetailsView(exercise: Exercise(name: "Push-Up", description: ""))
}
