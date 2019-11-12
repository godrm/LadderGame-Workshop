//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

protocol Game {
    mutating func run()
}

/// IO task handler
struct IOHandler {
    static func readInt(message: String) -> Int {
        print(message)
        let value = readLine() ?? ""
        return Int(value) ?? 0
    }
    
    static func readStrings(message: String) -> [String] {
        print(message)
        let value = readLine() ?? ""
        return value.split(separator: ",").map { String($0) }
    }
    
    static func printLadders(height: Int, count: Int) {
        for _ in 0 ..< height {
            print("|", terminator:"")
            for _ in 0 ..< count {
                if Int(arc4random_uniform(2)) == 1 {
                    print("---", "|", separator:"", terminator:"")
                } else {
                    print("   ", "|", separator:"", terminator:"")
                }
            }
            print()
        }
    }
}

/// Player information
struct LadderPlayer {
    var name = ""
}

/// Game infromation
struct GameInfo {
    var height: Int = 0
    var players: [LadderPlayer] = []
}

/// Game task manager
struct SingleLadderGame: Game {
    private var gameInfo: GameInfo
    
    init(info: GameInfo) {
        gameInfo = info
    }
    
    mutating func run() {
        gameInfo.height = readHeight()
        gameInfo.players = readPlayerNames()
        printLadders()
    }
    
    private func readHeight() -> Int {
        IOHandler.readInt(message: "사다리 높이를 입력해주세요.")
    }
    
    private func readPlayerNames() -> [LadderPlayer] {
        IOHandler.readStrings(message: "참여할 사람 이름을 입력하세요.")
            .map { LadderPlayer(name:$0) }
    }
    
    private func printLadders() {
        IOHandler.printLadders(height: gameInfo.height, count: gameInfo.players.count)
    }
}

var game: Game = SingleLadderGame(info: GameInfo())
game.run()
