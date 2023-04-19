//
//  WelcomeView.swift
//  CodeHistory
//
//  Created by Destiny Serna on 4/17/23.
//

import SwiftUI

struct WelcomeView: View {
    
    let accentColor = GameColor.accent
    let mainColor = GameColor.main
    
    var body: some View {
        NavigationView{
            ZStack{
                mainColor.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack{
                        Text("Select the correct answers to the questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                        BottomTextView(textToShow: "Let's Go!")
                                    })
                    
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
