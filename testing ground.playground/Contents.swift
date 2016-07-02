//: Playground - noun: a place where people can play


import Foundation
import UIKit
import GameKit

var indexOfSelectedQuestion: Int = 0


struct QuestionModel {

    var quesiton: String
    var answer: String
    
    let trivia: [[String: String]] = [
        ["Question": "Only female koalas can whistle", "Answer": "False"],
        ["Question": "Blue whales are technically whales", "Answer": "True"],
        ["Question": "Camels are cannibalistic", "Answer": "False"],
        ["Question": "All ducks are birds", "Answer": "True"]
    ]
    
   
    

     func displayQuestion()  {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(trivia.count)
        print(indexOfSelectedQuestion)
        
        
        
    }
    
    
}



