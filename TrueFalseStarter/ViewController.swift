//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox


class ViewController: UIViewController {
    
    let questionsPerRound = allQuestions.count
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion: Int = 0
  
    var gameSound: SystemSoundID = 0
    
//    let trivia: [[String : String]] = [
//        ["Question": "Only female koalas can whistle", "Answer": "False"],
//        ["Question": "Blue whales are technically whales", "Answer": "True"],
//        ["Question": "Camels are cannibalistic", "Answer": "False"],
//        ["Question": "All ducks are birds", "Answer": "True"]
//    ]
    
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGameStartSound()
        // Start game
        playGameStartSound()
        displayQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuestion() {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(allQuestions.count)
        let questionDictionary = allQuestions[indexOfSelectedQuestion].question
        
        questionField.text = questionDictionary
        playAgainButton.hidden = true
    }
    
    func displayAnswers() {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextIntWithUpperBound(allQuestions.count)
        let questionOption1 = allQuestions[indexOfSelectedQuestion].option1
        let questionOption2 = allQuestions[indexOfSelectedQuestion].option2
        let questionOption3 = allQuestions[indexOfSelectedQuestion].option3
        let questionOption4 = allQuestions[indexOfSelectedQuestion].option4
        
        option1Button.setTitle(questionOption1, forState: .Normal)
        option2Button.setTitle(questionOption2, forState: .Normal)
        option3Button.setTitle(questionOption3, forState: .Normal)
        option4Button.setTitle(questionOption4, forState: .Normal)
        
        playAgainButton.hidden = true
    }
    
    
    func displayScore() {
        // Hide the answer buttons
        option1Button.hidden = true
        option2Button.hidden = true
        option3Button.hidden = true
        option4Button.hidden = true
        
        // Display play again button
        playAgainButton.hidden = false
        
        questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        
    }
    
    @IBAction func checkAnswer(sender: UIButton) {
        // Increment the questions asked counter
        questionsAsked += 1
        
        let selectedQuestionDict = allQuestions[indexOfSelectedQuestion].correctAnswer
        let correctAnswer = selectedQuestionDict
        if (sender == correctAnswer ) {
            correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Sorry, wrong answer!"
        }
        
        loadNextRoundWithDelay(seconds: 1)
    }
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        option1Button.hidden = false
        option2Button.hidden = false
        option3Button.hidden = false
        option4Button.hidden = false
        
        questionsAsked = 0
        correctQuestions = 0
        nextRound()
    }
    
    
    
    // MARK: Helper Methods
    
    func loadNextRoundWithDelay(seconds seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, delay)
        
        // Executes the nextRound method at the dispatch time on the main queue
        dispatch_after(dispatchTime, dispatch_get_main_queue()) {
            self.nextRound()
        }
    }
    
    func loadGameStartSound() {
        let pathToSoundFile = NSBundle.mainBundle().pathForResource("GameSound", ofType: "wav")
        let soundURL = NSURL(fileURLWithPath: pathToSoundFile!)
        AudioServicesCreateSystemSoundID(soundURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}

