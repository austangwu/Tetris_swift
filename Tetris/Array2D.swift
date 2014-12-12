//
//  Array2D.swift
//  Tetris
//  Based off of Bloc.io's Swiftris 
//  Created by Austin Wu on 11/7/14.
//  Copyright (c) 2014 Austin Wu. All rights reserved.
//

//1
class Array2D<T> {
    let columns: Int
    let rows: Int
    
    //2
    var array: Array<T?>
    
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        
        //3
        array = Array<T?>(count:rows * columns, repeatedValue: nil )
    }
    
    //4
    subscript(column: Int, row: Int) -> T? {
        get{
            return array [(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
    
}