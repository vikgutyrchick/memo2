//
//  ViewController.swift
//  memo
//
//  Created by Dzimtry Navak on 3/28/18.
//  Copyright © 2018 oroom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let cardColor = UIColor.orange
    private let backColor = UIColor.brown
    
    private var openedCardIndex: Int?

    @IBOutlet var cards: [UIButton]!
    var images = ["🥝", "🍩", "🥗", "🥝", "🍩", "🥗", "🍔", "🍔"]
    
    override func viewDidLoad() {
        for (i, card) in cards.enumerated() {
            card.setTitle(images[i], for: .normal)
            hide(card: card)
        }
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        if let index = openedCardIndex {
            // Open the card
            openedCardIndex = cards.index(of: sender)
            open(card: sender)
            
            if sender.currentTitle == cards[index].currentTitle {
                sender.isHidden = true
                cards[index].isHidden = true
                openedCardIndex = nil
            }
            else {
                openedCardIndex = nil
            }
        }
        else {
            for card in cards {
                hide(card: card)
            }
            // Open the card
            openedCardIndex = cards.index(of: sender)
            open(card: sender)
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

















