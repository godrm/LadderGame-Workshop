//
//  LadderGameLauncher.swift
//  LadderGame
//
//  Created by 이규진 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class LadderGameLauncher {
    let core = LadderGameCore()

    func run() {
        let input = LadderGameInput(core: core)
        input.readPlayerNames()
        input.readHeight()
    }
}
