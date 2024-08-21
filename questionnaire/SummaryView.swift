//
//  SummaryView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 21/8/24.
//

import SwiftUI

struct SummaryView: View {
    
    let exercises: [Exercise] = Exercises
    
    var body: some View {
        NavigationStack {
            List(exercises) { exercise in
                NavigationLink(destination: ExerciseDetailsView(exercise: exercise)) {
                    Text(exercise.name)
                }
            }
            .navigationTitle("Summary")
        }
    }
}


#Preview {
    SummaryView()
}
