//
//  MemoryGame.swift
//  Observable
//
//  Created by 김혜리 on 2020/06/05.
//  Copyright © 2020 hyerikim. All rights reserved.
//

import Foundation

// model

struct MemoryGame<CardContent> {
    var cards: Array<Card>    
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        // create empty array
        cards = Array<Card>()
        
        // for loop with iteratable thing (0..<numberOfPairsOfCards)
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        if let chosenIndex: Int = self.index(of: card) {
            self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        }
    }
    
    func index(of card: Card) -> Int? {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return nil
    }
    
    // structure free initialize
    // nested struct
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
