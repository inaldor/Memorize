//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Inaldo Ramos Ribeiro on 11/07/2020.
//  Copyright © 2020 Inaldo Ramos Ribeiro. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        
        let emojis: Array<String> = ["👻","🎃","🕷","🚗","🥑"]
        let randomNumberOfCards = Int.random(in: 2...5)
        //let randomEmojis = b
        
        return MemoryGame<String>(numberOfPairsOfCards: randomNumberOfCards) { pairIndex in
            
            return emojis[pairIndex]
        }
        
    }
    
    /// MARK: - Access to the model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    /// MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
