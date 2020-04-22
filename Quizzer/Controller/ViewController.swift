//
//  ViewController.swift
//  Quizzer
//
//  Created by Rollin Francois on 4/20/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreView: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizLogic = QuizLogic()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        update label when view is loaded
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
//        get user input (true/false) / check answer
        let userAnswer = sender.currentTitle!
        let userCorrect = quizLogic.checkAnswer(userAnswer)
        
        if userCorrect {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        quizLogic.nextQuestion()
        
        // timer for button's background color
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
    @objc func updateUI() {
        questionLabel.text = quizLogic.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        scoreView.text = "Score: \(quizLogic.getScore())"
        progressView.progress = quizLogic.getProgress()
        
    }
    
}


