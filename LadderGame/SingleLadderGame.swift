//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by 조수환 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct SingleLadderGame: LadderGameProtocol {

    private let players: [LadderPlayer]
    private let ladder: Ladder

    func run() {
        print(self.showCurrentStatus())
    }

    init(withLadder ladder: Ladder, playerList players: [LadderPlayer]) {
        self.ladder = ladder
        self.players = players
    }

    func showCurrentStatus() -> String {
        var result = ""
        for _ in 0..<ladder.height {
            result.append("|")

             for _ in 0..<players.count {
                 if Int(arc4random_uniform(2))==1 {
                    result.append(contentsOf: "---")
                    result.append("|")
                 }
                 else {
                    result.append(contentsOf: "   ")
                    result.append("|")
                 }
             }
            result.append("\n")
         }
        return result
    }
}
