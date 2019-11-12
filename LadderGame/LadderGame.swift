//
//  Ladder.swift
//  LadderGame
//
//  Created by Daheen Lee on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderGame: LadderGamePresentable {
    private var height = 0
    private var players: Players!
    
    init(height: Int, players: Players) {
        self.height = height
        self.players = players
    }
    
    var playerCount: Int {
        return players.count
    }
    var ladderHeight: Int {
        return height
    }
}
