//
//  LadderGameImp.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


struct LadderGameImp: LadderGame {

    init(input: LadderGameInput,
         processor: LadderGridProcessor,
         output: LadderGameOutput) {
        self.input = input
        self.processor = processor
        self.output = output
    }

    func run() {
        let height = self.input.height()
        let players = self.input.name().map {
            LadderPlayerImp(name: $0)
        }
        let grid = processor.process(players: players,
                                     height: height)
        self.output.printLadder(grid: grid)
    }

    private let input: LadderGameInput
    private let processor: LadderGridProcessor
    private let output: LadderGameOutput

}

