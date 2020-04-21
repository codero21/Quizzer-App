//
//  ViewController.swift
//  Quizzer
//
//  Created by Rollin Francois on 4/20/20.
//  Copyright © 2020 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
//    initialize structs of Questions
    let quiz = [
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than One", answer: "True"),
        Question(text: "Three + Eight is less than Ten", answer: "False")
    
    ]
    
    
    
////    create array of questions
//    let quiz = [
//                ["Four + Two is equal to Six.", "True"],
//                ["Five - Three is greater than One", "True"],
//                ["Three + Eight is less than Ten", "False"]
//                ]
 
    var questionNumber = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        update label when view is loaded
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
//        get user input (true/false)
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print("Incorrect")
        }
        
        
//        check to see if we are at the end of the array
        if questionNumber + 1 < quiz.count {
//        increase questionNumber by 1 each time button pressed
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        

        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }
    
}


