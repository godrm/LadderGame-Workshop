//
//  Input.swift
//  LadderGame
//
//  Created by joon-ho kil on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Input {
    enum Announce: String {
        case height = "사다리 높이를 입력해주세요."
        case playerNames = "참여할 사람 이름을 입력하세요."
    }
    
    static func readHeight() -> Int {
        print(Announce.height.rawValue)
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    static func readPlayerNames() -> [String] {
        print(Announce.playerNames.rawValue)
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }
}
