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
            }
        }
    }
}

#Preview {
    ChoosePlanView()
}
