//
//  GameViewController.swift
//  Tetris
//
//  Created by Austin Wu on 11/7/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {

    var scene : GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure the view
        let skView = view as SKView
        skView.multipleTouchEnabled = false
        
        //create and configure scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        //Present scene
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}
