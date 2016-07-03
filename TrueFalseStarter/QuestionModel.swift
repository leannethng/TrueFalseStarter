//
//  QuestionModel.swift
//  TrueFalseStarter
//
//  Created by Leanne Thng on 6/27/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import Foundation

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
var question3 = (question: "Which bear is smarter than the average bear?", option1: "Paddington Bear", option2: "Pooh Bear", option3: "Rupert Bear", option4: "Yogi Bear", correctAnswer: "Yogi Bear")
var question4 = (question: "A gosling is the young of which bird?", option1: "Duck", option2: "Goose", option3: "Hen", option4: "Swan", correctAnswer: "Goose")
var question5 = (question: "What is the name of the second installment of the Elder Scrolls?", option1: "Bloodmoon", option2: "Morrowind", option3: "Daggerfall", option4: "Oblivion", correctAnswer: "Daggerfall")
var question6 = (question:  "What is the fictional continent that the video game Fable III takes place in?", option1: "Drakengaurd", option2: "Nether Realm", option3: "Albion", option4: "Morrowind", correctAnswer: "Albion")
var question7 = (question: "What Nintendo system was released after the N64 and before the Wii?", option1: "Gamecube", option2: "Nintendo 128", option3: "Virtual Boy", option4: "Super Nintendo", correctAnswer: "Gamecube")
var question8 = (question: "Which video game features an ex-Special Forces operator named Jack Carver, who is stranded in Micronesia?", option1: "Max Payne", option2: "Halo 2", option3: "Far Cry", option4: "Left 4 Dead", correctAnswer: "Far Cry")
var question9 = (question: "The 1982 film Blade Runner is set in which city?", option1: "Chicago", option2: "Los Angeles", option3: "New York", option4: "Seattle", correctAnswer: "Los Angeles")
var question10 = (question: "In the 1994 film Speed, the bomb is set to explode when the bus's speed falls below what?", option1: "40 mph", option2: "50 mph", option3: "55 mph", option4: "60 mph", correctAnswer: "50 mph")



var allQuestions = [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10].shuffle()





