//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct LadderInput {
    private(set) var players = [String]()
    private(set) var height = 0

    private mutating func readHeight() {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        self.height = Int(height) ?? 0
    }
    
    private mutating func readPlayerNames() {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        self.players = players.split(separator: ",").map{ String($0) }
    }
    
    mutating func readFromUser() {
        readHeight()
        readPlayerNames()
    }
}

struct LadderProcess {
    var input: LadderInput
    
    private func processInput() -> (height: Int, playerCount: Int) {
        return (height: input.height, playerCount: input.players.count)
    }
    
    func generateOutput() {
        let processedInput = processInput()
        LadderOutput.printLadders(height: processedInput.height,
                                  playerCount: processedInput.playerCount)
    }
}


struct LadderOutput {
    static func printLadders(height: Int, playerCount: Int) {
        for _ in 0..<height {
            print("|", terminator:"")
            for _ in 0..<playerCount {
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
    func run() {
        var input = LadderInput()
        input.readFromUser()
        
        let process = LadderProcess(input: input)
        process.generateOutput()
    }
}

var game = SingleLadderGame()
game.run()
