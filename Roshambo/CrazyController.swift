//
//  File.swift
//  Roshambo
//
//  Created by Brent Liang on 28/12/17.
//  Copyright © 2017 Brent Liang. All rights reserved.
//

import Foundation

import UIKit

class CrazyController: UIViewController {
    
    var score: Int?
    
    @IBOutlet var outcomeMessage: UILabel?
    
    override func viewWillAppear(_ animated: Bool) {
        if let score = self.score {
            switch score {
            case 0:
                self.outcomeMessage?.text = "It's a tie!"
            case 1:
                self.outcomeMessage?.text = "Paper covers rock! You win."
            case 2:
                self.outcomeMessage?.text = "Rock breaks scissor! You win."
            case 3:
                self.outcomeMessage?.text = "Scissor cuts paper! You win."
            case 4:
                self.outcomeMessage?.text = "Your paper got cut by a scissor! You lose."
            case 5:
                self.outcomeMessage?.text = "Your rock got destroyed by paper! You lose."
            case 6:
                self.outcomeMessage?.text = "Your scissor got crushed by a rock! You lose."
            default:
                self.outcomeMessage?.text = "What's poppin?"
            }
        } else {
            self.outcomeMessage?.text = nil
        }
    }
}
