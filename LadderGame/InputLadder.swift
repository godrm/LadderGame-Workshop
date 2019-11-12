//
//  InputLadder.swift
//  LadderGame
//
//  Created by UramMyeongbu on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct InputLagger {
    static func readHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    static func readPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }
}
