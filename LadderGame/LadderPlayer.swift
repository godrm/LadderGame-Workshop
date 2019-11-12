//
//  LadderPlayer.swift
//  LadderGame
//
//  Created by 조수환 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderPlayer {
    var name = ""

    static func parsePlayerString(_ str: String) -> [LadderPlayer] {
        return str.split(separator: ",")
            .map{String($0)}
            .map{ LadderPlayer(playerName: $0)}
    }
    
    init(playerName name: String) {
        self.name = name
    }
}
