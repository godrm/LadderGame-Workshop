//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

public struct LadderPlayer {
    var name = ""
}

public struct LadderGameOption {
    var height = 0
    var players = [LadderPlayer]()
}

public struct SingleLadderGame {
    
    var option = LadderGameOption()
    
    mutating func run() {
        option.height = LadderInput.readHeight()
        let names = LadderInput.readPlayerNames()
        option.players = names.map({LadderPlayer(name:$0)})
        LadderOutput.printLadders(option)
    }
}

var game = SingleLadderGame()
game.run()
