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
        Print.shared.height = Read.height()
        let names = Read.playerNames()
        Print.shared.players = names.map { SingleLadderGame.Player(name: $0) }
        Print.shared.printLadders()
    }
}

var game = SingleLadderGame()
game.run()
