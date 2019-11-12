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
    
    let ladderInfo: LadderInfo
    let ladderResult: LadderResult
    
    init(ladderInfo: LadderInfo, ladderResult: LadderResult) {
        self.ladderInfo = ladderInfo
        self.ladderResult = ladderResult
    }
    
    mutating func run() {
        let height = ladderInfo.getHeight()
        let names = ladderInfo.getPlayerNames()
        let players = names.map({LadderPlayer(name:$0)})
        print(players)
        self.ladderResult.printLadders(height: height, players: players)
    }
}

let ladderInfo = LadderInfo()
let ladderResult = LadderResult()
var game = SingleLadderGame(ladderInfo: ladderInfo, ladderResult: ladderResult)
game.run()
