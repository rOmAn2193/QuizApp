//
//  QuestionCollection.swift
//  QuizApp
//
//  Created by Roman on 3/13/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

import Foundation
import UIKit

class QuestionCollection
{
    var questions: [Question]

    init()
    {
        questions = []

        let questionImage1: UIImage = UIImage(named: "Albert_Einstein.jpg")!
        let questionImage2: UIImage = UIImage(named: "fifa14.jpg")!
        let questionImage3: UIImage = UIImage(named: "numbers.jpg")!
        let questionImage4: UIImage = UIImage(named: "valencia.jpg")!
        let questionImage5: UIImage = UIImage(named: "messi.jpg")!
        let questionImage6: UIImage = UIImage(named: "wc2002.jpg")!

        let q1 = Question(image: questionImage1, question: "Who is this Person?", answerOption1: "Eminem", answerOption2: "Devil", answerOption3: "Pikachu", answerOption4: "Albert Einstein", correctAnswerId: 4)
        questions.append(q1)
        let q2 = Question(image: questionImage2, question: "Who won the World Cup 2014?", answerOption1: "Argentina", answerOption2: "USA", answerOption3: "Germany", answerOption4: "Spain", correctAnswerId: 3)
        questions.append(q2)

        let q3 = Question(image: questionImage3, question: "What is the result of 24/6 + 5 -3*2?", answerOption1: "6", answerOption2: "4", answerOption3: "3", answerOption4: "5", correctAnswerId: 3)
        questions.append(q3)

        let q4 = Question(image: questionImage4, question: "Where is Valencia", answerOption1: "Italy", answerOption2: "Spain", answerOption3: "France", answerOption4: "Russia", correctAnswerId: 2)
        questions.append(q4)

        let q5 = Question(image: questionImage5, question: "Who is the best soccer player in the world?", answerOption1: "Messi", answerOption2: "Götze", answerOption3: "Ronaldo", answerOption4: "Neuer", correctAnswerId: 1)
        questions.append(q5)

        let q6 = Question(image: questionImage6, question: "Who won the Soccer World Cup 2002?", answerOption1: "France", answerOption2: "Italy", answerOption3: "Brasil", answerOption4: "Germany", correctAnswerId: 3)
        questions.append(q6)

    }

    func getQuestions() -> [Question]
    {
        return questions
    }

}