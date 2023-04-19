//
//  BottomTextView.swift
//  CodeHistory
//
//  Created by Destiny Serna on 4/17/23.
//

import SwiftUI

struct BottomTextView: View {
    
    let textToShow: String
    
    var body: some View {
        HStack{
            Spacer()
            Text(textToShow)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
        .background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(textToShow: "Test String")
    }
}
