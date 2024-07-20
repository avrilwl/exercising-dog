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


    var body: some View {
        VStack {
            TextField(
                "Enter your name",
                text: $GivenName
            )
            .disableAutocorrection(true)
            TextField(
                "Enter your age",
                text: $yourAge
            )
            .disableAutocorrection(true)
        }
        .textFieldStyle(.roundedBorder)
    }

    
    }


#Preview {
    ProfileView()
}
