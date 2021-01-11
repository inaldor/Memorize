//
//  MemoryGame.swift
//  Memorize
//
//  Created by Inaldo Ramos Ribeiro on 11/07/2020.
//  Copyright © 2020 Inaldo Ramos Ribeiro. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        
        print("card chosen: \(card)")
        
        let chosenIndex: Int = self.index(of: card)
        self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
    }
    
    func index(of card: Card) -> Int {
        
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        
        cards = Array<Card>()
        
            //cards = Array<Card>()
            for pairIndex in 0..<numberOfPairsOfCards {
                let content = cardContentFactory(pairIndex)
                cards.append(Card(isMatched: false, content: content, id: pairIndex*2))
                cards.append(Card(isMatched: false, content: content, id: pairIndex*2+1))
            }
            cards.shuffle()
        }
        
        //3let randomInt = Int.random(in: 0..<numberOfPairsOfCards)
        
//        for pairIndex in 0..<numberOfPairsOfCards {
//
//            //let ok = cardContentFactory(Int.random(in: 0...3))
//
//            let content = cardContentFactory(Int.random(in: 0..<3))
//
//            cards.append(Card(isMatched: false, content: content, id: pairIndex*2))
//            //cards.append(Card(isMatched: false, content: content, id: pairIndex*2+1))
//
//            //_ = cards.shuffled()
//        }
//
//        for pairIndex in 0..<numberOfPairsOfCards {
//
//            //let ok = cardContentFactory(Int.random(in: 0...3))
//
//            let content = cardContentFactory(Int.random(in: 0..<3))
//
//            //cards.append(Card(isMatched: false, content: content, id: pairIndex*2))
//            cards.append(Card(isMatched: false, content: content, id: pairIndex*2+1))
//
//            //_ = cards.shuffled()
//        }
//
//        //_ = self.cards.shuffled()
//        //print(ok)
//
//        //_ = cards.shuffled()
//    }
    
    
//    cards = Array<Card>()
//    for pairIndex in 0..<numberOfPairsOfCards {
//        let content = cardContentFactory(Int.random(in: 0..<numberOfPairsOfCards),
//        cards.append(Card(isMatched: false, content: content, id: pairIndex*2))
//        cards.append(Card(isMatched: false, content: content, id: pairIndex*2+1))
//    }
//}
    struct Card: Identifiable {
        
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
        
    }
    
    
}
//
//
//var first: Int
//var second: Int
////let random = Int.random(in: 0...5)
//
//repeat {
//    
//    first = Int.random(in: 0...3)
//    
//} while array.contains(first)
//
//array.append(first)
//
//repeat {
//    
//    second = Int.random(in: 0...3)
//    
//} while array.contains(second)
//
//array.append(second)
//
//print(first)
//print(second)
