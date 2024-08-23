//
//  ContentView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var streakno = 0
    @State private var name = "name"
    @State private var excercisetype = "wtv exercise"
    @State private var isFullScreenPresented = false
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack{
                HStack{
                    VStack (alignment:.leading){
                        Button (action: {
                            isFullScreenPresented = true
                        }) {
                            Text("take the quiz to get a FREE personalised plan")
                                .font(.system(size: 30))
                                .padding()
                                .background(.yellow)
                                .foregroundColor(.black)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.black, lineWidth: 3)
                                )
                        }
                        
                        Button(action: {
                            
                        }) {
                            Text("profile")
                                .font(.system(size: 30))
                                .padding()
                                .background(.yellow)
                                .foregroundColor(.black)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.black, lineWidth: 3)
                                )
                            
                        }
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("🔥")
                            .font(.system(size: 40))
                        Text("\(streakno)")
                            .font(.system(size: 30))
                    }
                }
                .padding()
                Text("\(name) is unfit, go exercise!")
                    .font(.system(size: 20))
                Spacer()
                Text("it's upper body day!")
                    .font(.system(size: 20))
                Button{
                } label: {
                    Text("start today's workout")
                        .font(.system(size: 30))
                        .padding()
                        .background(.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.black, lineWidth: 3)
                        )
                }
                
                
                
            }
            
        }
        .fullScreenCover(isPresented: $isFullScreenPresented) {
            QuestionnaireView()
        }
    }
}


#Preview {
    ContentView()
}
