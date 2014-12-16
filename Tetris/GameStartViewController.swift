//
//  GameStartViewController.swift
//  Tetris
//
//  Created by Austin Wu on 12/15/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

import Foundation
import UIKit

class GameStartViewController : UIViewController, UIGestureRecognizerDelegate{
    
    @IBAction func didTap(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("gvcID") as GameViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
}