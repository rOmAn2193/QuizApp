//
//  QuestionsVC.swift
//  QuizApp
//
//  Created by Roman on 3/20/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

import UIKit

class QuestionsVC: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!

    @IBAction func buttonPressed(sender: AnyObject)
    {
        checkCorrectness(sender.tag)
        print(sender.tag)
        setScore()
        questionNumber++
        nextQuestion()
    }

    var questionNumber = 0
    var answerId = 0
    var score = 0
    var questionsCollection = QuestionCollection()
    var questions = []
    var userDefaults = NSUserDefaults.standardUserDefaults()

    func setScore()
    {
        scoreLabel.text = "Score: \(score)"
    }

    func setButtons()
    {
        if questionsCollection.questions.count > questionNumber
        {
            answerButton1.setTitle(questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].answerOption1, forState: .Normal)
            answerButton2.setTitle(questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].answerOption2, forState: .Normal)
            answerButton3.setTitle(questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].answerOption3, forState: .Normal)
            answerButton4.setTitle(questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].answerOption4, forState: .Normal)
        }
    }

    func checkCorrectness(answerId: Int)
    {
        if questionsCollection.getQuestions().count > questionNumber
        {
            if answerId == questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].correctAnswerId
            {
                score = score + 10
            }
        }
    }

    func saveHighScore(newScore: Int)
    {
        let highscore = userDefaults.integerForKey("highscore")
        if highscore <= newScore
        {
            userDefaults.setValue(newScore, forKey: "highscore")
            userDefaults.synchronize()
        }
    }


    func nextQuestion()
    {
        print("questionNumber \(questionNumber)")
        if questionsCollection.getQuestions().count > questionNumber
        {
            questionLabel.text = questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].question
        }

        setButtons()
        setImage()

        if questionsCollection .getQuestions().count == questionNumber
        {
            questionLabel.text = "Game Over"
            saveHighScore(score)
        }

    }


    func setImage()
    {
        if questionsCollection.questions.count > questionNumber
        {
            if let questionImage = questionsCollection.getQuestions()[questionsCollection.getQuestions().startIndex + questionNumber].image
            {
                imageView.image = questionImage
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.questions = questionsCollection.getQuestions()
        setImage()
        setButtons()
        nextQuestion()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
