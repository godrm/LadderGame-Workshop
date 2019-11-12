//
//  Output.swift
//  LadderGame
//
//  Created by joon-ho kil on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Output {
    static func printLadders(height: Int, players: [LadderPlayer]) {
        func printRandom() {
            if Int(arc4random_uniform(2))==1 {
                print("---", "|", separator:"", terminator:"")
                return
            }
            
            print("   ", "|", separator:"", terminator:"")
        }
        
        func printLadder() {
            print("|", terminator:"")
            for _ in 1..<players.count {
                printRandom()
            }
            print()
        }
        
        for _ in 0..<height {
            printLadder()
        }
    }
}
