//
//  Question.swift
//  Quizzer
//
//  Created by Rollin Francois on 4/20/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String

    init(q: String, a: String) {
        text = q
        answer = a
        
    }
}
