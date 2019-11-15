//
//  LadderGameOutput.swift
//  LadderGame
//
//  Created by 김효원 on 15/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderGameOutput: LadderGameOutputType {
    func printLadder(height: Int, count: Int) {
        for _ in 0..<height {
            for _ in 0..<count {
                let stare = Int(arc4random_uniform(2))==1 ? Ladder.horizental : Ladder.space
                print(Ladder.vertical, stare, separator:"", terminator:"")
            }
            print()
        }
    }
    
}
