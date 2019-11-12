//
//  Input.swift
//  LadderGame
//
//  Created by CheolHyeon Park on 11/12/19.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Input {
	static func readLedderHeight() -> Ledder {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Ledder(height: Int(height) ?? 0)
    }
    
    static func readPlayerNames() -> [Player] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
		return players.split(separator: ",").map{Player(name: String($0))}
    }
}
