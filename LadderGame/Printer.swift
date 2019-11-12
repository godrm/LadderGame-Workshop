//
//  Printer.swift
//  LadderGame
//
//  Created by YOUTH2 on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderGamePrinter {

    static private var verticalBar = "|"
    static private var horizontalBar = "---"
    static private var emptyHorizontalBar = "   "

    static func start(game: Gameable) {
        for _ in 0..<game.height {
            print(verticalBar, terminator:"")
            for _ in 0..<game.players.count {
                LadderGamePrinter.randomHorizontalLadder()
            }
            print()
        }
    }

    private static func randomHorizontalLadder() {
        if Int(arc4random_uniform(2))==1 {
            print(horizontalBar, verticalBar, separator:"", terminator:"")
        } else {
            print(emptyHorizontalBar, verticalBar, separator:"", terminator:"")
        }
    }
}
