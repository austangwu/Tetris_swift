//
//  LShape.swift
//  Tetris
//  Based off of Bloc.io's Swiftris
//  Created by Austin Wu on 12/11/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

class LShape: Shape{
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (0,2), (1,2)],
            Orientation.Ninety: [(1,1), (0,1), (-1,1), (-1,2)],
            Orientation.OneEighty: [(0,2), (0,1), (0,0
                ), (-1,0)],
            Orientation.TwoSeventy: [(-1,1), (0,1), (1,1), (1,0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return[
            Orientation.Zero: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[ThirdBlockIdx]]
        ]
    }
}
