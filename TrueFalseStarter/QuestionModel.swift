//
//  QuestionModel.swift
//  TrueFalseStarter
//
//  Created by Leanne Thng on 6/27/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation
import UIKit
import GameKit

var indexOfSelectedQuestion: Int = 0

struct QuestionModel {
    let trivia: [[String : String]] = [
        ["Question": "Only female koalas can whistle", "Answer": "False"],
        ["Question": "Blue whales are technically whales", "Answer": "True"],
        ["Question": "Camels are cannibalistic", "Answer": "False"],
        ["Question": "All ducks are birds", "Answer": "True"]
    ]
    
    func displayQuestion() -> String {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(trivia.count)
        
        let questionDictionary = trivia[indexOfSelectedQuestion]
        print(questionDictionary)
        let question = questionDictionary["Question"]
        return question!
        
       
        
        
            }

    
}
