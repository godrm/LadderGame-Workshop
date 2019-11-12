//
//  NoOpLadderGame.swift
//  LadderGame
//
//  Created by 조수환 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct NoOpLadderGame: LadderGameProtocol {
    func run() {}

    func showCurrentStatus() -> String { return "" }
}
