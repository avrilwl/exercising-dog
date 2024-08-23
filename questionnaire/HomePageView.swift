//
//  HomePageView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct HomePageView: View {
    
    @State private var streakno = 0
    @State private var name = "name"
    @State private var excercisetype = "wtv exercise"
    @State private var isFullScreenPresented = false
    @State private var isMooScreenPresented = false
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack{
                HStack{
                    VStack (alignment:.leading){
                        Button{
                        } label: {
                            Text("my plan")
                                .font(.system(size: 25))
                                .padding()
                                .background(.yellow)
                                .foregroundColor(.black)
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.black, lineWidth: 3)
                                )
                        }
                        
                        Button (action: {
                            isFullScreenPresented = true
                        }) {
                            Text("profile")
                                .font(.system(size: 25))
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
                Text("ching is unfit, go exercise!")
                    .font(.system(size: 20))
                Spacer()
                Text("It's upper body day!")
                    .font(.system(size: 20))
                Button (action: {
                    isMooScreenPresented = true
                }) {
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
            ProfileView()
        }
        .fullScreenCover(isPresented: $isMooScreenPresented) {
            WorkoutView()
        }
    }
}


#Preview {
    HomePageView()
}
