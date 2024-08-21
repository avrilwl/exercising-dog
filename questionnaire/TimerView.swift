//
//  TimerView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 21/8/24.
//

import SwiftUI

struct TimerView: View {
    
    @State private var timeRemaining: Int = 60
    @State private var timer: Timer?
    @State private var isRunning: Bool = false
    
    var body: some View {
        VStack {
            Text(timeString(from: timeRemaining))
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                if !isRunning {
                    startTimer()
                }
            }) {
                Text(isRunning ? "Do the workout until the timer ends" : "Start")
                    .font(.title)
                    .padding()
                    .background(isRunning ? Color.white : Color.blue)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 3)
                        )
            }
            .disabled(isRunning)
            
            Spacer()
        }
        .padding()
    }
    
    func startTimer() {
        isRunning = true
        timeRemaining = 60
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer?.invalidate()
                timer = nil
                isRunning = false
                showAlert()
            }
        }
    }
    
    func timeString(from seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func showAlert() {
    }
}

#Preview {
    TimerView()
}
