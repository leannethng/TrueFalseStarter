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



class Question {
    var question: String
    var option1: String
    var option2: String
    var option3: String
    var option4: String
    var correctAnswer: String
    
    init(question: String, option1: String, option2: String, option3: String, option4: String,correctAnswer: String){
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.correctAnswer = correctAnswer
        
    }
   
}

//Trying creating a constant to hold the instances rather than calling them all the creating the array
var question1 = (question: "If cats are feline and dogs are canine, what are cattle?", option1: "Bovine", option2: "Caprine", option3: "Corvine", option4: "Ovine", correctAnswer: "Bovine")
var question2 = (question: "Which animal inspired Robert the Bruce of Scotland to try again?", option1: "Camel", option2: "Giraffe", option3: "Mouse", option4: "Spider", correctAnswer: "Spider")


var allQuestions = [question1, question2]
