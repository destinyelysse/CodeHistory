//
//  QuestionView.swift
//  CodeHistory
//
//  Created by Destiny Serna on 4/18/23.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack{
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                        print(question.possibleAnswers[answerIndex])
                        viewModel.makeGuess(atIndex: answerIndex)
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.getUpdatedcolor(forButtonAtIndex: answerIndex))
                    }
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }) {
                    BottomTextView(textToShow: "Next")
                }
            }
        }
    }
}

//struct QuestionView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        QuestionView(question: Question.allQuestions[0])
//    }
//}
