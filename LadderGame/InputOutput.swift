//
//  InputOutput.swift
//  LadderGame
//
//  Created by 진호놀이터 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol PlayerGettable {
    var players: [LadderPlayer] { get set }
}


protocol GameOutputable: PlayerGettable {
    var height: Int { get set }
    func printGameOutput()
}


protocol GameInputable: PlayerGettable {
    func readHeight() -> Int
    func readPlayerNames() -> [String]
}



