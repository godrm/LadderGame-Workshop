//
//  GameController.swift
//  LadderGame
//
//  Created by YOUTH2 on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct GameController {
    var game: Gameable?

    mutating func run() {

        let height = GameConsole.readHeight(message: "사다리 높이를 입력해주세요.")
        let players = GameConsole.readPlayers(message: "참여할 사람 이름을 입력하세요.")

        game = SingleLadderGame(height: height, players: players)

        game?.run()
    }
}
