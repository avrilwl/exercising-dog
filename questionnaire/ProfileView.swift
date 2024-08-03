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


    var body: some View {
        VStack {
//            TextField(
//                "Enter your name",
//                text: $GivenName
//
//            )
//        
//            Spacer()
//            .disableAutocorrection(true)
//            TextField(
//                "Enter your age",
//                text: $yourAge
//                
//            )
//            Spacer()
//            .disableAutocorrection(true)
//            TextField(
//                "Enter your height",
//                text: $yourHeight
//            )
            TextField("Your Name", text: self.$GivenName)
                .frame(height: 55)
                   .textFieldStyle(PlainTextFieldStyle())
                   .padding([.horizontal], 4)
                   .cornerRadius(16)
                   .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                   .padding([.horizontal], 24)
            .disableAutocorrection(true)
            Spacer()
            TextField("Your Height", text: self.$yourHeight)
                .frame(height: 55)
                   .textFieldStyle(PlainTextFieldStyle())
                   .padding([.horizontal], 4)
                   .cornerRadius(16)
                   .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                   .padding([.horizontal], 24)
            .disableAutocorrection(true)
            Spacer()
            TextField("Your weight", text: self.$yourWeight)
                .frame(height: 55)
                   .textFieldStyle(PlainTextFieldStyle())
                   .padding([.horizontal], 4)
                   .cornerRadius(16)
                   .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                   .padding([.horizontal], 24)
            .disableAutocorrection(true)
            Spacer()
            TextField("Your age", text: self.$yourAge)
                .frame(height: 55)
                   .textFieldStyle(PlainTextFieldStyle())
                   .padding([.horizontal], 4)
                   .cornerRadius(16)
                   .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                   .padding([.horizontal], 24)
            .disableAutocorrection(true)
            Spacer()
//            Spacer()
//            TextField(
//                "Enter your weight",
//                text: $yourWeight
//            )
//            .disableAutocorrection(true)
//            Spacer()
        }
        .textFieldStyle(.roundedBorder)
        
    }

    
    }


#Preview {
    ProfileView()
}
