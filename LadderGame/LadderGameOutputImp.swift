//
//  LadderGameOutputImp.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


struct LadderGameOutputImp: LadderGameOutput {

    func printLadders(players: [LadderPlayer], height: Int) {
        let verticalWall = "|"
        let horizontalWall = "---"
        let space = "   "
        (0..<height).forEach { _ in
            print(verticalWall, terminator: "")
            (0..<players.count).forEach { _ in
                if Int(arc4random_uniform(2))==1 {
                    print(horizontalWall,
                          verticalWall,
                          separator:"",
                          terminator:"")
                }
                else {
                    print(space,
                          verticalWall,
                          separator:"",
                          terminator:"")
                }
            }
            print()
        }
    }

}
