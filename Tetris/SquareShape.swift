//
//  SquareShape.swift
//  Tetris
//  Based off of Bloc.io's Swiftris
//  Created by Austin Wu on 12/11/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

class SquareShape:Shape{
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.Ninety: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.OneEighty: [(0,0), (1,0), (0,1), (1,1)],
            Orientation.TwoSeventy: [(0,0), (1,0), (0,1), (1,1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}

