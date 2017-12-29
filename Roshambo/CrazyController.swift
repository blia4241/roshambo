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
                self.outcomeMessage?.text = "Your scissor got crushed by rock! Damn..."
            case 2:
                self.outcomeMessage?.text = "Your paper covers rock. You win!"
            case 3:
                self.outcomeMessage?.text = "Your rock crushes the scissor. Good job..."
            case 4:
                self.outcomeMessage?.text = "Your rock got fucked by paper! You lose."
            case 5:
                self.outcomeMessage?.text = "Your paper got cut up by a scissor. You lose."
            case 6:
                self.outcomeMessage?.text = "Your scissor cuts up some paper (and pussies). Ummm."
            default:
                self.outcomeMessage?.text = "What's poppin?"
            }
        } else {
            self.outcomeMessage?.text = nil
        }
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
