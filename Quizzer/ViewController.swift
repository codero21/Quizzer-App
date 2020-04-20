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
    
//    create array of questions
    let quiz = [
                "Four + Two is equal to Six.",
                "Five - Three is greater than One",
                "Three + Eight is less than Ten"
                ]
    
    var questionNumber = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        update label when view is loaded
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
//        increase questionNumber by 1 each time button pressed
        questionNumber += 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
    
}


