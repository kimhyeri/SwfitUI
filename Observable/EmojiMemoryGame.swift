//
//  EmojiMemoryGame.swift
//  Observable
//
//  Created by 김혜리 on 2020/06/05.
//  Copyright © 2020 hyerikim. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String>
    
    
    // MARK: - Intent(s)
    
    var card: Array<MemoryGame<String>.Card> {
        return model.cards
    }
     
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
