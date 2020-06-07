//
//  MemoryGame.swift
//  Observable
//
//  Created by 김혜리 on 2020/06/05.
//  Copyright © 2020 hyerikim. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }
    
    // nested
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
