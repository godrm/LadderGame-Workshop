//
//  LadderGameInput.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol LadderGameInput {

    func height() -> Int
    func name() -> [String]

}

extension LadderGameInput {

    func height() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }

    func name() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }

}

struct LadderGameInputImp: LadderGameInput {}
