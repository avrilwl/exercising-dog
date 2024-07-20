//
//  ProfileView.swift
//  questionnaire
//
//  Created by Li Jiansheng on 20/7/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var name: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .foregroundColor(.blue)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
           
        }
    }
    
    }


#Preview {
    ProfileView()
}
