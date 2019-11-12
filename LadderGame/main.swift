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

    func run() {
        let names: [String] = Read.playerNames
        
        Print.Data.setHeight(Read.height)
        Print.Data.setPlayers(names.map { SingleLadderGame.Player(name: $0) })
        
        Print.ladders()
    }
}

var game = SingleLadderGame()
game.run()
