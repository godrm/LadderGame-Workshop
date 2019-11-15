//
//  LadderGame.swift
//  LadderGame
//
//  Created by 김효원 on 14/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderGame: LadderGameType {
    internal let output: LadderGameOutputType
    internal let input: LadderGameInputType
    
    struct LadderPlayer {
        var name = ""
    }
    
    private var height = 0
    private var players = [LadderPlayer]()
    
    init() {
        output = LadderGameOutput()
        input = LadderGameInput()
    }
    
    mutating func run() {
        let playerNames = input.readPlayerNames()
        players = playerNames.map { LadderPlayer(name: $0) }
        height = input.readHight()
        
        output.printLadder(height: self.height, count: self.players.count)
    }
}
