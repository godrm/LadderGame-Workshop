//
//  Output.swift
//  LadderGame
//
//  Created by Jo JANGHUI on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderOutputType {
    func printLadders(height: Int, players: [SingleLadderGame.LadderPlayer]) -> Void
}

final class LadderOutput: LadderOutputType {
    func printLadders(height: Int, players: [SingleLadderGame.LadderPlayer]) {
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
