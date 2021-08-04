//
//  ViewController.swift
//  RPS
//
//  Created by Данил Казаков on 04.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var robotLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetButton.isHidden = true
    }
    func reset() {
        resultLabel.text = "Rock, Papers, Scissors?"
        self.view.backgroundColor = UIColor.white
        robotLabel.text = "🤖"
            
        rockButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isHidden = false
        paperButton.isEnabled = true
        scissorsButton.isHidden = false
        scissorsButton.isEnabled = true
        resetButton.isHidden = true
    }
    func play(_ sign: Sign) {
        let computerSign = randomSign()
        robotLabel.text = computerSign.emoji
        
        switch sign {
        case .rock:
            rockButton.isHidden = false
            rockButton.isEnabled = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            paperButton.isEnabled = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
            scissorsButton.isEnabled = false
        }
        
        let result = sign.takeTurn(computerSign)
        
        switch result {
        case .draw:
            resultLabel.text = "It's drow!"
            self.view.backgroundColor = UIColor.gray
        case .lose:
            resultLabel.text = "You lose!"
            self.view.backgroundColor = UIColor.red
        case .win:
            resultLabel.text = "You won!"
            self.view.backgroundColor = UIColor.green
        case .start:
            reset()
        }
        
        resetButton.isHidden = false
    }
    
    @IBAction func rockButtonDidPressed(_ sender: UIButton) {
        play(.rock)
    }
    @IBAction func paperButtonDidPressed(_ sender: UIButton) {
        play(.paper)
    }
    @IBAction func scissorsButtonDidPressed(_ sender: UIButton) {
        play(.scissors)
    }
    @IBAction func resetButtonDidPressed(_ sender: UIButton) {
        reset()
    }
    

}

