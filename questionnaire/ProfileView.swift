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
            TextField(
                "Enter your name",
                text: $GivenName
            )
            Spacer()
            .disableAutocorrection(true)
            TextField(
                "Enter your age",
                text: $yourAge
            )
            Spacer()
            .disableAutocorrection(true)
            TextField(
                "Enter your height",
                text: $yourHeight
            )
            .disableAutocorrection(true)
            Spacer()
            TextField(
                "Enter your weight",
                text: $yourWeight
            )
            .disableAutocorrection(true)
            Spacer()
        }
        .textFieldStyle(.roundedBorder)
        
    }

    
    }


#Preview {
    ProfileView()
}
