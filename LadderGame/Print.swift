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
        static private(set) var height: Int = 0
        static private(set) var players: [SingleLadderGame.Player] = []
        
        static func setHeight(_ height: Int) {
            Data.height = height
        }
        
        static func setPlayers(_ players: [SingleLadderGame.Player]) {
            Data.players = players
        }
        
        static func appendPlayer(_ player: SingleLadderGame.Player) {
            Data.players.append(player)
        }
    }
    
    static func ladders() {
        for _ in 0 ..< Data.height {
            print("|", terminator:"")
            
            for _ in 0 ..< Data.players.count {
                if Int(arc4random_uniform(2)) == 1 {
                    print("---", "|", separator:"", terminator:"")
                } else {
                    print("   ", "|", separator:"", terminator:"")
                }
            }
            
            print()
        }
    }
}
