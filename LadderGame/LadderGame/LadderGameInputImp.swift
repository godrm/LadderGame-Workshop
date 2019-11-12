//
//  LadderGameInputImp.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


struct LadderGameInputImp: LadderGameInput {

    func height() -> Int {
        print(Instruction.height)
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }

    func name() -> [String] {
        print(Instruction.name)
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }

    private enum Instruction {

        static let height = "사다리 높이를 입력해주세요."
        static let name = "참여할 사람 이름을 입력하세요."

    }

}
