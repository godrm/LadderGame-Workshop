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

protocol GameInput {
    func readHeight() -> Int
    func readPlayerNames() -> [String]
}

struct InputLadderGame: GameInput {
    func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }
}

protocol GameDisplay {
    func printLadders(height: Int, players: [LadderPlayer])
}

struct DisplayLadderGame: GameDisplay {
    func printLadders(height: Int, players: [LadderPlayer]) {
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

struct SingleLadderGame {
    
    var height: Int = 0
    var players: [LadderPlayer] = []
    
    var gameDisplay: GameDisplay
    var gameInput: GameInput
    
    mutating func inputGameHeight() {
        height = gameInput.readHeight()
    }
    
    mutating func inputGamePlayer() {
        let names = gameInput.readPlayerNames()
        players = names.map({LadderPlayer(name:$0)})
    }
        
    mutating func run() {
        gameDisplay.printLadders(height: height, players: players)
    }
}

let gameDisplay: GameDisplay = DisplayLadderGame()
let gameInput: GameInput = InputLadderGame()
var game: SingleLadderGame = SingleLadderGame(gameDisplay: gameDisplay, gameInput: gameInput)
game.inputGameHeight()
game.inputGamePlayer()
game.run()
