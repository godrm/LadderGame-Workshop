//
//  LadderGame.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol LadderGame {

    init(input: LadderGameInput,
         output: LadderGameOutput)

    func run()

}

struct LadderGameImp: LadderGame {

    init(input: LadderGameInput,
         output: LadderGameOutput) {
        self.input = input
        self.output = output
    }

    func run() {
        let height = self.input.height()
        let players = self.input.name().map {
            LadderPlayerImp(name: $0)
        }
        self.output.printLadders(players: players,
                            height: height)
    }

    private let input: LadderGameInput
    private let output: LadderGameOutput

}

