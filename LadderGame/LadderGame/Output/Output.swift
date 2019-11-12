//
//  Output.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Output {
}

extension Output: OutputType {
    func printLadders(height: Int, players: [LadderPlayer]) {
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
