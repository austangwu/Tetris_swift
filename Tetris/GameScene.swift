//
//  GameScene.swift
//  Tetris
//
//  Created by Austin Wu on 11/7/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

import SpriteKit

let TickLengthLevelOne = NSTimeInterval(600)

class GameScene: SKScene {
    
    var tick:(() -> ())?
    var tickLengthMillis = TickLengthLevelOne
    var lastTick:NSDate?
    
    override func update(currentTime: CFTimeInterval) {
        if lastTick == nil{
            return
        }
        var timePassed = lastTick!.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis{
            lastTick = NSDate()
            tick?()
            
            /*
                tick?() is the same as:
            if tick != nil {
                tick!()
            }
            */
        }
    }
    
    func startTicking(){
        lastTick = NSDate()
    }
    
    func stopTicking() {
        lastTick = nil
    }
    
    required init(coder aDecoder : NSCoder!){
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize){
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        addChild(background)
    }
    
    
}
