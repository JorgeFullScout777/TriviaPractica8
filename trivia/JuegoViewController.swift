//
//  JuegoViewController.swift
//  trivia
//
//  Created by Jorge Luna Reyna on 06/03/24.
//

import UIKit

class JuegoViewController: UIViewController {

    @IBOutlet var btnsResponse: [UIButton]!
    
    var gameModels = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupQuestions()
    }
    
    private func setupQuestions(){
        //gameModels.append(Question(text: "", answers: <#T##[Answer]#>))
    }
}

struct Question {
    let text: String
    let answers: [Answer]
}
struct Answer{
    let text: String
    let correct: Bool
}
