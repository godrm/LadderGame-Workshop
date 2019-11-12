//
//  Printer.swift
//  LadderGame
//
//  Created by YOUTH2 on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Printer {

    static func start(game: Gameable) {
        for _ in 0..<game.height {
            print("|", terminator:"")
            for _ in 0..<game.players.count {
                if Int(arc4random_uniform(2))==1 {
                    print("---", "|", separator:"", terminator:"")
                }
                else {
                    print("   ", "|", separator:"", terminator:"")
                }
            }
            print()
        }
    }
}
