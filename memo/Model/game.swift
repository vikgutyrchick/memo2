//
//  game.swift
//  memo
//
//  Created by Viktoria Gutyrchick on 06.04.2018.
//  Copyright © 2018 oroom. All rights reserved.
//

import Foundation

class Game {
    private (set) var cards: [Card]
    private var openedCardIndex: Int?
    
    init(cards: [Card]) {
        self.cards = cards
    }
    
    func showCard(at index: Int) {
        cards[index].isOpened = true
        
        if let previousCardIndex = openedCardIndex {
        // та же карта
        if index == previousCardIndex {
            return
        }
        
        // карточки совпали
        if cards[previousCardIndex] == cards[index] {
                cards[previousCardIndex].isMatched = true
                cards[index].isMatched = true
            }
            
            // карточки не совпали
            else {
                cards[previousCardIndex].isOpened = false
                cards[index].isOpened = false
            }
            openedCardIndex = nil
         }
        else {
            openedCardIndex = index
         }
    }
    
    func isAllCardsClosed() -> Bool {
        for card in cards {
            if card.isMatched == false {
                return false
            }
        }
    return true
    }
    
    
}
