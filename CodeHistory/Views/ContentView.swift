//
//  ContentView.swift
//  CodeHistory
//
//  Created by Destiny Serna on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)

    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("3/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print(question.possibleAnswers[answerIndex])
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
            .padding(10)
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
