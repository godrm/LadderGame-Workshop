//
//  GameConsole.swift
//  LadderGame
//
//  Created by YOUTH2 on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct GameConsole {

    static func readHeight(message: String) -> Int {
        let height = GameConsole.getUserResponse(message)
        return Int(height) ?? 0
    }

    static func readPlayers(message: String) -> [Playerable] {
        let players = GameConsole.getUserResponse(message)
        return players.split(separator: ",").map{LadderPlayer(name: String($0))}
    }

    private static func getUserResponse(_ message: String) -> String {
        print(message)
        return readLine() ?? ""
    }
}
