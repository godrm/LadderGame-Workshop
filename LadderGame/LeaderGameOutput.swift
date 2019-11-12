//
//  LeaderGame.swift
//  LadderGame
//
//  Created by 진호놀이터 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LeaderGameOutput: GameOutputable {
    var height: Int = 0
    var players: [LadderPlayer] = []
    
    func printGameOutput() {
        for _ in 0..<height {
            print("|", terminator:"")
            for _ in 0..<players.count {
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
