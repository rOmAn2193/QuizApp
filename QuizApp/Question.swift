//
//  Question.swift
//  QuizApp
//
//  Created by Roman on 3/13/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

import Foundation
import UIKit

class Question
{
    var image: UIImage!
    var question: String!
    var answerOption1: String!
    var answerOption2: String!
    var answerOption3: String!
    var answerOption4: String!
    var correctAnswerId: Int!

    init(image: UIImage, question: String, answerOption1: String, answerOption2: String, answerOption3: String, answerOption4: String, correctAnswerId: Int)
    {
        self.image = image
        self.question = question
        self.answerOption1 = answerOption1
        self.answerOption2 = answerOption2
        self.answerOption3 = answerOption3
        self.answerOption4 = answerOption4
        self.correctAnswerId = correctAnswerId

    }
}