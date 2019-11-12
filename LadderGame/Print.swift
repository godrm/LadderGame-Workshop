//
//  Print.swift
//  LadderGame
//
//  Created by 장혜준 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Print {
    struct Data {
        static var height = 0
        static var players: [SingleLadderGame.Player] = []
    }
    
    static func ladders() {
        for _ in 0 ..< Data.height {
            print("|", terminator:"")
            for _ in 0 ..< Data.players.count {
                if Int(arc4random_uniform(2)) == 1 {
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
