//
//  ContentView.swift
//  Observable
//
//  Created by 김혜리 on 2020/06/05.
//  Copyright © 2020 hyerikim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
            // set up all view inside ZStack
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

// 캡슐
struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                // front
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("🙇‍♀️")
            } else {
                // back
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
