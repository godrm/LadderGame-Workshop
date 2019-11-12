//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

enum DisplayMeesage {
    case height
    case player

    var inputMessage: String {
        switch self {
        case .height:
            return "사다리 높이를 입력해주세요."
        case .player:
            return "참여할 사람 이름을 입력하세요."
        }
    }
}

struct LadderPlayer {
    var name = ""
}

protocol LadderGame {
    var height: Int { get set }
    var players: [LadderPlayer] { get set }
    func setUpHeight(height: String?) -> Int
    func setUpPlayersName(players: String?) -> [String]
    func printLadders()
    func drawLadder(randomAcross: Bool) -> String
}

extension LadderGame {
    func setUpHeight(height: String?) -> Int {
        guard let height = height else { return 0 }
        return Int(height) ?? 0
    }

    func setUpPlayersName(players: String?) -> [String] {
        guard let players = players else { return [] }
        return players.split(separator: ",").map{String($0)}
    }
    func printLadders() {
        for _ in 0..<height {
            var lineString = "|"
            for _ in 0..<players.count {
                let isAcross = Int(arc4random_uniform(2))==1
                lineString += drawLadder(randomAcross: isAcross)
            }
            print(lineString)
        }
    }

    func drawLadder(randomAcross: Bool) -> String {
        return randomAcross ? "---|" : "   |"
    }
}

struct SingleLadderGame: LadderGame {
    var height: Int = 0
    var players: [LadderPlayer] = []

    
    mutating func run() {
        displayMessage(type: .height)
        height = setUpHeight(height: readLine())

        displayMessage(type: .player)
        let names = setUpPlayersName(players: readLine())

        players = names.map({LadderPlayer(name:$0)})
        printLadders()
    }

    private func displayMessage(type: DisplayMeesage) {
        print(type.inputMessage)
    }
}

var game = SingleLadderGame()
game.run()
