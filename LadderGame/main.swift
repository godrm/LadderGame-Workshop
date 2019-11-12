//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation


struct Player {
    var name = ""
}

struct SingleLadderGame {
    var players = [Player]()
    var ladderHeight = 0
    
    init(ladderHeight: Int, players: [Player]) {
        self.ladderHeight = ladderHeight
        self.players = players
    }
    
    func run() {
        for _ in 0..<ladderHeight {
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



func readHeight() -> Int {
    print("사다리 높이를 입력해주세요.")
    let height = readLine() ?? ""
    return Int(height) ?? 0
}

func readPlayerNames() -> [Player] {
    print("참여할 사람 이름을 입력하세요.")
    let players = readLine() ?? ""
    return players
        .split(separator: ",")
        .map{String($0)}
        .map{Player(name: $0)}
        
}

let height = readHeight()
let players: [Player] = readPlayerNames()

var game = SingleLadderGame(ladderHeight: height, players: players)

game.run()
