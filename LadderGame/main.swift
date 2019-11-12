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
struct SingleLadderGame {
    struct LadderPlayer {
        var name = ""
    }

    static func readHeight(height: String?) -> Int {
        guard let height = height else { return 0 }
        return Int(height) ?? 0
    }
    
    static func readPlayerNames(players: String?) -> [String] {
        guard let players = players else { return [] }
        return players.split(separator: ",").map{String($0)}
    }
    
    var height = 0
    var players = [LadderPlayer]()
    
    mutating func run() {
        displayMessage(type: .height)
        self.height = SingleLadderGame.readHeight(height: readLine())

        displayMessage(type: .player)
        let names = SingleLadderGame.readPlayerNames(players: readLine())

        self.players = names.map({LadderPlayer(name:$0)})
        printLadders()
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

    private func displayMessage(type: DisplayMeesage) {
        print(type.inputMessage)
    }

    private func drawLadder(randomAcross: Bool) -> String {
        return randomAcross ? "---|" : "   |"
    }
}

var game = SingleLadderGame()
game.run()
