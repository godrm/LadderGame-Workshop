//
//  LadderGameType.swift
//  LadderGame
//
//  Created by 김효원 on 14/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderGame {
    private let output: LadderGameOutput
    private let input : LadderGameInput
    private let play : LadderGamePlay
}

protocol LadderGameOutput {
    func printLadder()
    func printNotice(_ String: notice)
}

protocol LadderGameInput {
    private func read() -> String
    
    func readArray() -> [String]
    func readInt() -> Int
}

protocol LadderGamePlay {
    func run()
}

enum Ladder {
    let pillar = "|"
    let stare = "-"
}
