//
//  TShape.swift
//  Tetris
//  Based off of Bloc.io's Swiftris
//  Created by Austin Wu on 12/11/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

class TShape:Shape{
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1,0), (0,1), (1,1), (2,1)],
            Orientation.Ninety: [(2,1), (1,0), (1,1), (1,2)],
            Orientation.OneEighty: [(1,2), (0,1), (1,1), (2,1)],
            Orientation.TwoSeventy: [(0,1), (1,0), (1,1), (1,2)]
        ]
    }
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy:  [blocks[FirstBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
