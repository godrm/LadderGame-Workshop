//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct LadderGameFactory {

    static func make() -> LadderGame {
        let height = readHeight()
        let playerNames = readPlayerNames()
        let players = playerNames.map(LadderPlayer.init)
        return LadderGame(height: height, players: players)
    }
    
    static func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    private static func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }

}

struct LadderGame {
    
    var height: Int
    var players: [LadderPlayer]
    
    func run() {
        printLadders()
    }

    // MARK: - private
    
    private func printLadders() {
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

struct LadderPlayer {
    var name = ""
}

let game = LadderGameFactory.make()
game.run()
