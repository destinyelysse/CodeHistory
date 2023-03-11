//
//  ContentView.swift
//  CodeHistory
//
//  Created by Destiny Serna on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("3/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("This is a Question. What do you guess?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    Button(action: {
                        print("Button 1 was tapped.")
                    }, label: {
                        Text("Button 1")
                        .font(.body)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                        .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Button 2 was tapped.")
                    }, label: {
                        Text("Button 2")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Button 3 was tapped.")
                        
                    }, label: {
                        Text("Button 3")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
                    Button(action: {
                        print("Button 4 was tapped.")
                        
                    }, label: {
                        Text("Button 4")
                            .font(.body)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 4)
                    })
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
