//
//  Game.swift
//  CodeHistory
//
//  Created by Destiny Serna on 4/3/23.
//

import Foundation

struct Game {
    
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question: Int]()
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if guessedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    var numberOfQuestions: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        return (currentQuestionIndex < self.questions.count) ? questions[currentQuestionIndex] : questions[0] 
        
    }
    
   mutating func makeGuessForCurrentQuestion(atIndex index: Int)  {
        guesses[currentQuestion] = index
    }
    
    mutating func updateGameStatus() {
        self.currentQuestionIndex += 1
        if self.currentQuestionIndex >= self.questions.count {
            self.isOver = true
        }
    }
    
}
