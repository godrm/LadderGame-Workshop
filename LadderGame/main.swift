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
    var inputHeight = LadderInputHeight<Int>()
    var inputName = LadderInputName<[String]>()
    var output: Outputable = LadderOutput()
    
    mutating func run() {
        option.height = inputHeight.read()
        let names = inputName.read()
        option.players = names.map({LadderPlayer(name:$0)})
        output.printLadders(option)
    }
}

var game = SingleLadderGame()
game.run()
