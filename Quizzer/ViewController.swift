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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    
}


