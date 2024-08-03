//
//  avril.swift
//  questionnaire
//
//  Created by Li Jiansheng on 27/7/24.
//

import Foundation
struct Quiz: Decodable, Hashable {
    var title: String
    var questions: [Question]
}
struct Question: Decodable, Hashable {
    var question: String
    var options: [String]
}
extension Quiz { static var empty: Self = .init(title: "", questions: []) }
