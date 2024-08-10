//
//  ChoosePlanView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct ChoosePlanView: View {

    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                Text("Choose the duration of your plan!")
                    .font(.largeTitle)
                
                Button(action: {
                    MyPlanView()
                }) {
                    Text("7 day workout plan")
                        .frame(width: 350, height: 50)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .background(Color.green)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 3)
                        )
                }
                Button(action: {
                    MyPlanView()
                }) {
                    Text("30 day workout plan")
                        .frame(width: 350, height: 50)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 3)
                        )
                }
                Button(action: {
                    MyPlanView()
                }) {
                    Text("100 day workout plan")
                        .frame(width: 350, height: 50)
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .background(Color.red)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 3)
                        )
                }
            }
        }
    }
}

#Preview {
    ChoosePlanView()
}
