//
//  ViewController.swift
//  memo
//
//  Created by Dzimtry Navak on 3/28/18.
//  Copyright © 2018 oroom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cards: [UIButton]!
    var images = ["🥝", "🍩", "🥗", "🥝", "🍩", "🥗"]
    
    override func viewDidLoad() {
        for (i, card) in cards.enumerated() {
            card.setTitle(images[i], for: .normal)
        }
    }
    
    @IBAction func cardTapped(_ sender: UIButton) {
        sender.backgroundColor = UIColor.brown
    }
}

