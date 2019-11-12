//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

typealias LadderPlayer = String

struct SingleLadderGame {
    var input: UserInputType?
    var output: outputType?
    
    mutating func run() {
        guard let height = input?.getHeight() else { return }
        guard let players = input?.getPlayerNames() else { return }
        
        output?.printLadders(height: height, players: players)
    }
}

protocol UserInputType {
    func getHeight() -> Int
    func getPlayerNames() -> [LadderPlayer]
}

struct UserInput: UserInputType {
    static let shared = UserInput()
    private init() {}
    
    func getHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    func getPlayerNames() -> [LadderPlayer] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }
}

protocol outputType {
    func printLadders(height: Int, players: [LadderPlayer])
}

struct Output: outputType {
    static let shared = Output()
    private init() {}
    
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

var game = SingleLadderGame()
game.input = UserInput.shared
game.output = Output.shared

game.run()
