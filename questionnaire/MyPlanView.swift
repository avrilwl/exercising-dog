//
//  MyPlanView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct MyPlanView: View {
    var body: some View {
        Text("My plan (30 Days)")
            .bold()
            .font(.system(size: 36))
        ScrollView{
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 1")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 Burpees")
                Text("Plank shoulder taps- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.pink)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 2")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.teal)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 3")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.green)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 4")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.mint)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 5")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.gray)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 6")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.blue)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 6")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.red)
            .cornerRadius(20)
            VStack (alignment: .leading, spacing: 40) {
                Text("Day 7")
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.gray)
                    .padding()
                    .background(.white)
                    .font(.largeTitle)
                    .font(.system(size: 50))
                Text("15 pushups- 30 seconds")
                Text("1 minute plank")
                Text("30 squats- 1 minute")
                Text("Jumping jacks- 1 minute")
                Text("30 leg raises- 1 minute")
                Text("30 sit ups- 1 minute 15 seconds")
                
            }
            .frame(width: 300)
            .padding()
            .background(.yellow)
            .cornerRadius(20)
            
            
        }
      
    }
}


#Preview {
    MyPlanView()
}
