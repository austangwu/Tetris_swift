//
//  GameOverViewController.swift
//  Tetris
//
//  Created by Austin Wu on 12/12/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverViewController : UIViewController, UIGestureRecognizerDelegate {
    var gameViewController: GameViewController!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    
    func passController(gameViewController: GameViewController){
        self.gameViewController = gameViewController
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelLabel.text = "\(gameViewController.tetris.level)"
        scoreLabel.text = "\(gameViewController.tetris.score)"
    }
    
    @IBAction func didTapPlayAgain(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: {self.gameViewController.scene.startTicking()
        self.gameViewController.tetris.beginGame()
        })
    }
    
}
