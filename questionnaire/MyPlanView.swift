//
//  MyPlanView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct MyPlanView: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.black)
                    Text("Back")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        
                }).padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("My plan (7 Days)")
                    .bold()
                    .font(.system(size: 36))
                
                
                ScrollView{
                    VStack (alignment: .leading, spacing: 40) {
                        
                        Text("Day 1")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("15 pushups - 30 seconds")
                        Text("1 minute side plank")
                        Text("30 Burpees")
                        Text("Plank shoulder taps - 1 minute")
                        Text("30 clapping push ups")
                        Text("30 plank ups - 1 minute 15 seconds")
                        
                    }
                    .frame(width: 280)
                    .padding()
                    .background(.red)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Day 2")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("20 squats")
                        Text("10 side lunges")
                        Text("15 calf raises")
                        Text("20 squat jumps")
                        Text("15 leg raises")
                        Text("10 single leg squat")
                        
                    }
                    .frame(width: 280)
                    .padding()
                    .background(.orange)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Day 3")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("superman - 45 seconds")
                        Text("cobra - 45 seconds")
                        Text("15 ab curls and hold")
                        Text("20 reverse crunches")
                        Text("40 toe taps")
                        Text("20 russian twists")
                        Text("15 Seated sissors kick")
                        Text("15 mountain climbers each side")
                        
                    }
                    .frame(width: 280)
                    .padding()
                    .background(.green)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Day 4")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("REST DAY!!!")
                        
                        
                    }
                    .frame(width: 280)
                    .padding()
                    .background(.mint)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Day 5")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("15 pushups")
                        Text("1 minute plank")
                        Text("30 squats")
                        Text("20 squats")
                        Text("10 single leg squats")
                        Text("15 side leg raises")
                        
                    }
                    .frame(width: 280)
                    .padding()
                    .background(.blue)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Day 6")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("superman 45 seconds")
                        Text("45 seconds cobra")
                        Text("15 mountain climbers on each side")
                        Text("30 Jumping jacks")
                        Text("40 butt kicks")
                        Text("15 side lunges")
                        
                    }
                    .frame(width: 280)
                    .padding()
                    .background(.purple)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    VStack (alignment: .leading, spacing: 40) {
                        Text("Day 7")
                            .bold()
                            .font(.largeTitle)
                            .font(.system(size: 50))
                        Text("REST DAY!!!")
                        
                        
                    }
                    
                    .frame(width: 280)
                    .padding()
                    .background(.pink)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    
                }
                
            }
            
        }
    }
}


#Preview {
    MyPlanView()
}
