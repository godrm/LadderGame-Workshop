//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct Ladder {
    var height:Int = 0
    
    mutating func readHeight() {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        self.height = Int(height) ?? 0
    }
}

class LadderCreater {
    func getLadder() -> Ladder {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        
        return Ladder(height: Int(height) ?? 0)
    }
}

struct LadderPlayer {
    var name = ""
}

struct LadderPlayerManager {
    func getPlayers() ->[LadderPlayer] {
        print("참여할 사람 이름을 입력하세요. 예). 호길이, 삼식이, 너구리")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}.map({LadderPlayer(name:$0)})
    }
}

class LadderPrinter {
    func printLadders(for ladder: Ladder, with players: [LadderPlayer]) {
        for _ in 0..<ladder.height {
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

struct SingleLadderGame {
    var ladderCreater: LadderCreater
    var playerManager: LadderPlayerManager
    var printer: LadderPrinter
    init() {
        ladderCreater = LadderCreater()
        playerManager = LadderPlayerManager()
        printer = LadderPrinter()
    }
    
    mutating func run() {
        let ladder = self.ladderCreater.getLadder()
        let players = self.playerManager.getPlayers()
        self.printer.printLadders(for: ladder, with: players)
    }
}

var game = SingleLadderGame()
game.run()
