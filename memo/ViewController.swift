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
    
    // Just hardcoded images for cards
    var images = ["🥝", "🍩", "🥗", "🥝", "🍩", "🥗", "🍔", "🍔"]
    
    override func viewDidLoad() {
        // Here we set image for each card.
        // TODO: add random cards distribution
        for (i, card) in cards.enumerated() {
            card.setTitle(images[i], for: .normal)
            hide(card: card)
        }
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        // One card was opened on previous step
        if let index = openedCardIndex {
            open(card: sender)
            
            // Make matched cards totally hidden
            // FIXME: check that sender is not the same with cards[index]
            // TODO: finish or restart game if all cards are hidden after this step
            if sender.currentTitle == cards[index].currentTitle {
                sender.isHidden = true
                cards[index].isHidden = true
            }
            // Set to nil to show that 0 or 2 cards opened
            openedCardIndex = nil
        }
        else {
            // Hide all cards if 0 or 2 cards opened
            for card in cards {
                hide(card: card)
            }
            // Open the card and set opened card index
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
