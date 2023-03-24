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
    
    let quizArray = quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = quizArray.quiz[1]
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
    }

    
}

