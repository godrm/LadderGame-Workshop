//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    fileprivate var height = 0
    var input: GameInputable
    var output: GameOutputable
   
    mutating func run() {
        output.height = input.readHeight()
        output.players = input.readPlayerNames().map({LadderPlayer(name:$0)})
        output.printGameOutput()
    }
}

var game = SingleLadderGame(input: LeaderGameInput(), output: LeaderGameOutput())
game.run()




