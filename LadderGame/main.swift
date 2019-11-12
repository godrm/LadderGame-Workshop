//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    struct Player {
        var name = ""
    }

    mutating func run() {
        Print.Data.height = Read.height()
        let names = Read.playerNames()
        Print.Data.players = names.map { SingleLadderGame.Player(name: $0) }
        Print.ladders()
    }
}

var game = SingleLadderGame()
game.run()
