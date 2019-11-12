//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct LadderHeight {
    var height = 0
    init() {
        print("사다리의 높이를 입력해주세요.")
        let input = readLine() ?? ""
        height = Int(input) ?? 0
    }
}

struct LadderPlayer {
    var players = [String]()
    init() {
        print("참여할 사람 이름을 입력하세요.")
        let input = readLine() ?? ""
        players = input.split(separator: ",").map{String($0)}
    }
}

struct PrintLadder {
    let horizontal = "---"
    let vertical = "|"
    init(_ ladderPlayer: LadderPlayer, _ ladderHeight: LadderHeight) {
        
        for _ in 0..<ladderHeight.height {
            print(vertical, terminator:"")
            for _ in 0..<ladderPlayer.players.count {
                if Int(arc4random_uniform(2))==1 {
                    print(horizontal, vertical, separator:"", terminator:"")
                }
                else {
                    print("   ", vertical, separator:"", terminator:"")
                }
            }
            print()
        }
    }
}


struct SingleLadderGame {
    mutating func run() {
        let ladderHeight = LadderHeight.init()
        let ladderPlayer = LadderPlayer.init()
        let _ = PrintLadder.init(ladderPlayer, ladderHeight)
    }
}

var game = SingleLadderGame()
game.run()
