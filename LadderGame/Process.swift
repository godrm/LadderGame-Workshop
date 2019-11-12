//
//  Process.swift
//  LadderGame
//
//  Created by Minkwan Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderModel {
    var height : Int
    var players : [LadderPlayer]
}

struct LadderPlayer {
    var name = ""
}

struct Process {
    
    static func input() -> LadderModel {
        let height = Input.readHeight()
        let names = Input.readPlayerNames()
        let players = names.map({LadderPlayer(name:$0)})
        
        return LadderModel(height: height, players: players)
    }
    
    static func output(ladderModel : LadderModel) {
        Output.printLadders(height: ladderModel.height, players: ladderModel.players)
    }
}
