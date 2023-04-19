//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Destiny Serna on 4/18/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentageCorrect: Int {
        correctGuesses * 100 / (correctGuesses + incorrectGuesses)
    }
    
    
}
