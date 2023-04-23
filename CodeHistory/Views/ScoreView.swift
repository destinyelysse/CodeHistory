//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Destiny Serna on 4/18/23.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                VStack{
                    Text("Final Score:")
                        .font(.body)
                        .padding()
                    Text("\(viewModel.percentageCorrect)%")
                        .font(.system(size: 50))
                        .bold()
                }
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses) correct")
                    Text("\(viewModel.incorrectGuesses) incorrect")
                }
                .font(.body)
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                    BottomTextView(textToShow: "Play Again!")
                })
                .padding()
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 2, incorrectGuesses: 1))
    }
}
