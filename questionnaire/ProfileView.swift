//
//  ProfileView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var name: String = ""
    @State private var GivenName: String = ""
    @State private var yourAge: String = ""
    @State private var yourHeight: String = ""
    @State private var yourWeight: String = ""
    @State private var isFullScreenPresented = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                Text("Your profile")
                    .bold()
                    .font(.system(size: 36))
                
              
                TextField("Enter your name", text: $GivenName)
                    .padding(40)
                    .background(Color.clear)
                    .border(Color.clear)
                    .textFieldStyle(PlainTextFieldStyle())
                //                .font(.body)
                    .font(.system(size: 30))
                
                TextField("How old are you?", text: $yourAge)
                    .padding(40)
                    .background(Color.clear)
                    .border(Color.clear)
                    .textFieldStyle(PlainTextFieldStyle())
                //                .font(.body)
                    .font(.system(size: 30))
                TextField("How tall are you?", text: $yourHeight)
                    .padding(40)
                    .background(Color.clear)
                    .border(Color.clear)
                    .textFieldStyle(PlainTextFieldStyle())
                //                .font(.body)
                    .font(.system(size: 30))
                TextField("What's your weight?", text: $yourWeight)
                    .padding(40)
                    .background(Color.clear)
                    .border(Color.clear)
                    .textFieldStyle(PlainTextFieldStyle())
                //                .font(.body)
                    .font(.system(size: 30))
                
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
                
            }
            .textFieldStyle(.roundedBorder)
            
            
        }
        .fullScreenCover(isPresented: $isFullScreenPresented) {
            HomePageView()
        }
        
    }
    
}
    #Preview {
        ProfileView()
    }

