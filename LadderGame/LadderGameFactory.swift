//
//  LadderGameFactory.swift
//  LadderGame
//
//  Created by 조수환 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class LadderGameFactory {
    enum GameStyle {
        case single
    }
    static func makeLadderGame(gameStyle style: GameStyle = .single) -> LadderGameProtocol {

        let heightPrompt = "사다리 높이를 입력해주세요."
        let playerPrompt = "참여할 사람 이름을 입력하세요."

        guard let height = ConsoleScanner.readInt(withPrompt: heightPrompt),
            let players = ConsoleScanner.readString(withPrompt: playerPrompt) else {
            return NoOpLadderGame()
        }

        switch style {
        case .single:
            return SingleLadderGame(withLadder: Ladder(ladderHeight: height),
                                    playerList: LadderPlayer.parsePlayerString(players))
        }
    }

    private init() {}
}
