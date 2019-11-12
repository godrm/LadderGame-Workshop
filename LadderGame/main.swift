//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    struct LadderPlayer {
        var name = ""
    }
    
    private let ladderInfo: LadderInputType
    private let ladderResult: LadderOutputType
    
    init(ladderInfo: LadderInputType, ladderResult: LadderOutputType) {
        self.ladderInfo = ladderInfo
        self.ladderResult = ladderResult
    }
    
    mutating func run() {
        let height = ladderInfo.getHeight()
        let names = ladderInfo.getPlayerNames()
        let players = names.map({LadderPlayer(name:$0)})
        self.ladderResult.printLadders(height: height, players: players)
    }
}

let ladderInput = LadderInput()
let ladderOutput = LadderOutput()
var game = SingleLadderGame(ladderInfo: ladderInput, ladderResult: ladderOutput)
game.run()
