//
//  ReaderType.swift
//  LadderGame
//
//  Created by Yong Jae Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol ReaderType {
    func readLadderHeight() -> Int
    func readPlayers() -> [LadderPlayer]
}

