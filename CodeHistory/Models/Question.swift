//
//  Question.swift
//  CodeHistory
//
//  Created by Destiny Serna on 3/26/23.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                 "Steve Jobs",
                 "Linus Torvaldis",
                 "Bill Gates",
                 "Tim Berners-Lee"
                 ],
                correctAnswerIndex: 3),
        Question(questionText: "What was the first object-oriented programming language?",
                 possibleAnswers: ["Simula", "Python", "Swift", "C"],
                 correctAnswerIndex: 0),
        Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    ]
}
