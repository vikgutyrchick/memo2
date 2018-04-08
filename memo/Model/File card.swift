//
//  File card.swift
//  memo
//
//  Created by Viktoria Gutyrchick on 06.04.2018.
//  Copyright © 2018 oroom. All rights reserved.
//

import Foundation

struct Card: Equatable {
    var isOpened: Bool
    var isMatched: Bool
    var id: String
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
}
