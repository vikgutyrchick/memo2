//
//  CardsView.swift
//  memo
//
//  Created by Viktoria Gutyrchick on 06.04.2018.
//  Copyright © 2018 oroom. All rights reserved.
//

import Foundation
import UIKit

protocol CardsViewDelegate {
    func didTapCard(at index: Int)
}

class CardsView: UIStackView {
    var delegate: CardsViewDelegate?
    private let cardColor = UIColor.orange
    private let backColor = UIColor.brown
    
    @IBOutlet var cards: [UIButton]!
    
    @IBAction func cardTapped(_ sender: UIButton) {
        if let index = cards.index(of: sender) {
            delegate?.didTapCard(at: index)
        }
    }

    func updateView(game: Game) {
    for (i, card) in game.cards.enumerated() {
        let button = cards [i]
        button.isHidden = card.isMatched
        if card.isOpened {
            open(card: button)
        }
        else {
            hide(card: button)
        }
    }
}

private func open(card: UIButton) {
    card.backgroundColor = cardColor
    card.setTitleColor(UIColor.black, for: .normal)
}

private func hide(card: UIButton) {
    card.setTitleColor(UIColor.clear, for: .normal)
    card.backgroundColor = backColor
}
}

