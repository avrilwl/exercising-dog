//
//  ProfileView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var name: String = ""
    
    @State private var givenName: String = ""
    @State private var familyName: String = ""


    var body: some View {
        VStack {
            TextField(
                "Enter your name",
                text: $givenName
            )
            .disableAutocorrection(true)
            TextField(
                "Enter your age",
                text: $familyName
            )
            .disableAutocorrection(true)
        }
        .textFieldStyle(.roundedBorder)
    }

    
    }


#Preview {
    ProfileView()
}
