//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizArray = Quiz()
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let actualAnswer = quizArray.quiz[questionNumber][1]
        let userAnswer = sender.currentTitle
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if questionNumber + 1 < quizArray.quiz.count {
            questionNumber += 1
        } else {
            print("Out of index")
            questionNumber = 0
        }
        
        
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quizArray.quiz[questionNumber][0]
    }

    
}

