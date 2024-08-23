//
//  SummaryView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 21/8/24.
//

import SwiftUI

struct SummaryView: View {
    
    let exercises: [Exercise] = Exercises
    @State private var isFullScreenPresented = false
    
    var body: some View {
        ZStack {
            VStack {
                NavigationStack {
                    List(exercises) { exercise in
                        NavigationLink(destination: ExerciseDetailsView(exercise: exercise)) {
                            Text(exercise.name)
                        }
                    }
                    .navigationTitle("Summary")
                }
            }
            Button(action: {
                isFullScreenPresented = true
            }) {
                Text("done")
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
            .frame (maxHeight: .infinity, alignment: .bottom)
        }
        .fullScreenCover(isPresented: $isFullScreenPresented) {
            AfterHomePageView()
        }
    }
}





#Preview {
    SummaryView()
}
