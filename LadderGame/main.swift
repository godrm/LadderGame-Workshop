//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    
    mutating func run() {
        Process.output(ladderModel: Process.input())
    }
    
    
}

var game = SingleLadderGame()
game.run()
