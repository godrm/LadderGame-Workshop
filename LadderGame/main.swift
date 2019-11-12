//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct LadderPlayer {
    var name = ""
}

struct SingleLadderGame {
    // MARK:- Properties
    
    var height = 0
    var players = [LadderPlayer]()
            
    // MARK:- Methods
    
    static func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    static func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map { String($0) }
    }
        
    mutating func run() {
        height = SingleLadderGame.readHeight()
        let names = SingleLadderGame.readPlayerNames()
        players = names.map { LadderPlayer(name: $0) }
        printLadders()
    }
    
    func printLadders() {
        for _ in 0..<height {
            print("|", terminator: "")
            for _ in 0..<players.count {
                if Int.random(in: 0..<2) == 1 {
                    print("---", "|", separator:"", terminator:"")
                } else {
                    print("   ", "|", separator:"", terminator:"")
                }
            }
            print()
        }
    }
}

// MARK:- Run Code

var game = SingleLadderGame()
game.run()
