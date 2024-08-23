//
//  AfterHomePageView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 23/8/24.
//

import SwiftUI

struct AfterHomePageView: View {
    var body: some View {

            ZStack {
                Color.blue.ignoresSafeArea()
                VStack{
                    HStack{
                        VStack (alignment:.leading){
                            Button{
                            } label: {
                                Text("my plan")
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
                            
                            Button{
                            } label: {
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
                            Text("1")
                                .font(.system(size: 30))
                        }
                    }
                    .padding()
                    Text("ching is healthy!")
                        .font(.system(size: 20))
                    Spacer()
                    Text("good job on finishing your workout!")
                        .font(.system(size: 20))
                    Button{
                    } label: {
                        Text("you have finished!")
                            .font(.system(size: 30))
                            .padding()
                            .background(.red)
                            .foregroundColor(.black)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(.black, lineWidth: 3)
                            )
                    }
                    
                    
                    
                }
                
            }
            
        }
        
    }

    
    
    #Preview {
        AfterHomePageView()
    }
