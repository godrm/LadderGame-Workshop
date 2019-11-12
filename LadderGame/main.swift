//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    mutating func run() {
        let ledder = Input.readLedderHeight()
        let players = Input.readPlayerNames()
        
		Output.printLadders(with: ledder, players: players)
    }
}

var game = SingleLadderGame()
game.run()
