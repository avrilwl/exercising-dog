//
//  WorkoutView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

let exercises = [
    Exercisess(name: "Push ups"),
    Exercisess(name: "Rest"),
    Exercisess(name: "Side plank"),
    Exercisess(name: "Rest"),
    Exercisess(name: "Burpees"),
    Exercisess(name: "Rest"),
    Exercisess(name: "Plank shoulder taps"),
    Exercisess(name: "Rest"),
    Exercisess(name: "High plank"),
    Exercisess(name: "Rest"),
    Exercisess(name: "Plank ups")
]


struct WorkoutView: View {
    
    @State private var currentExerciseIndex = 0
    @State private var timeRemaining = 60
    @State private var timer: Timer? = nil
    @State private var isActive = false
    @State private var isFullScreenPresented = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                if currentExerciseIndex < exercises.count {
                    Text(exercises[currentExerciseIndex].name)
                        .font(.largeTitle)
                        .padding()
                    TimerView()
                    Button(action: nextExercise) {
                        Text("Next Exercise")
                            .font(.title2)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 3)
                            )
                        
                    }
                    
                } else {
                    Text("Workout Complete!")
                        .font(.largeTitle)
                        .padding()
                }
            }
        }
        .onAppear {
            startTimer()
        }
        .onDisappear {
            timer?.invalidate()
        }
        .fullScreenCover(isPresented: $isFullScreenPresented) {
            SummaryView()
        }
    }
        
        func startTimer() {
            if timer != nil {
                timer?.invalidate()
                timer = nil
                isActive = false
                return
            }
            
            timeRemaining = 60
            isActive = true
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timer?.invalidate()
                    isActive = false

                }
            }
        }
        
        
        func nextExercise() {
            if currentExerciseIndex < exercises.count - 1 {
                currentExerciseIndex += 1
                timeRemaining = 60
                startTimer()
            }
            else if currentExerciseIndex == 10 {
                isFullScreenPresented = true
            }
        }
}



#Preview {
    WorkoutView()
}
