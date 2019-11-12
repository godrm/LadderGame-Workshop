//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

typealias LadderPlayer = String

struct SingleLadderGame {
    var input: UserInputType?
    var output: OutputType?
    
    mutating func run() {
        guard let height = input?.getHeight() else { return }
        guard let players = input?.getPlayerNames() else { return }
        
        output?.printLadders(height: height, players: players)
    }
}
