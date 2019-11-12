//
//  LadderGampeOutput.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderGameOutput {

    func printLadders(players: [LadderPlayer], height: Int)

}

extension LadderGameOutput {

    func printLadders(players: [LadderPlayer], height: Int) {
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

struct LadderGameOutputImp: LadderGameOutput {}
