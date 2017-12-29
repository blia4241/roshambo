//
//  ViewController.swift
//  Roshambo
//
//  Created by Brent Liang on 28/12/17.
//  Copyright © 2017 Brent Liang. All rights reserved.
//

import UIKit

class ChoiceController: UIViewController {
    
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var codedValuebyPlayer: Int!
    var outcomeScore: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rockabye() {
        produceOutcome(codedValuebyPlayer: 0)
        transitToVC()
        
    }
    
    @IBAction func paperTown() {
        produceOutcome(codedValuebyPlayer: 2)
        transitToVC()
    }
    
    func produceOutcome(codedValuebyPlayer: Int) {
        
        let codedValuebyApp = arc4random_uniform(3)
        switch (codedValuebyPlayer, codedValuebyApp) {
        
        // Tie
        case (0,0), (1,1), (2,2):
            outcomeScore = 0
        // Scissor got crushed by Rock
        case (1,0):
            outcomeScore = 1
        // Paper covers rock
        case (2,0):
            outcomeScore = 2
        // Rock crushes scissor
        case (0,1):
            outcomeScore = 3
        // Rock got covered by paper
        case (0,2):
            outcomeScore = 4
        // Paper got cut up by scissor
        case (2,1):
            outcomeScore = 5
        // Scissor cuts up paper
        case (1,2):
            outcomeScore = 6
        default:
            outcomeScore = 7
        }
    }
    func transitToVC() {
        var controller = CrazyController()
        
        controller = self.storyboard?.instantiateViewController(withIdentifier: "CrazyController") as! CrazyController
        
        controller.score = outcomeScore
        
        self.present(controller, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! CrazyController
        produceOutcome(codedValuebyPlayer: 1)
        controller.score = outcomeScore
    }
    
    @IBAction func showResultMethod() {
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
}
