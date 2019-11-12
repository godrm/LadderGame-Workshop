//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by YOUTH2 on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol Gameable {
    var height: Int { get set }
    var players: [Playerable] { get set }

    mutating func run()
}

struct SingleLadderGame: Gameable {

    var height = 0
    var players = [Playerable]()

    mutating func run() {
        Printer.start(game: self)
    }
}
