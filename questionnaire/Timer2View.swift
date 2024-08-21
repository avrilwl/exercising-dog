//
//  Timer2View.swift
//  questionnaire
//
//  Created by Li Jiansheng on 21/8/24.
//

import SwiftUI

struct Timer2View: View {
    
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
                Text(isRunning ? "Finsh the workout before the time ends" : "Start")
                    .font(.title)
                    .padding()
                    .background(isRunning ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(isRunning)
            
            Spacer()
        }
        .padding()
    }
    
    func startTimer() {
        isRunning = true
        timeRemaining = 60 // Reset time to 60 seconds
        
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
    Timer2View()
}
