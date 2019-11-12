//
//  OutputManager.swift
//  LadderGame
//
//  Created by Daheen Lee on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderGamePresentable {
    var ladderHeight: Int { get}
    var playerCount: Int { get }
}

struct OutputManager {
    static func start(_ ladderGame: LadderGamePresentable) {
        for _ in 0..<ladderGame.ladderHeight {
            print("|", terminator:"")
            for _ in 0..<ladderGame.playerCount {
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
