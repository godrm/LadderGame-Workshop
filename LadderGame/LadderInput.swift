//
//  LadderInput.swift
//  LadderGame
//
//  Created by DSLee on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderInput {
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

struct LadderOutput {
    static func printLadders(_ option: LadderGameOption) {
        for _ in 0..<option.height {
            print("|", terminator:"")
            for _ in 0..<option.players.count {
                if Int(arc4random_uniform(2))==1 {
                    print("---", "|", separator:"", terminator:"")
                }
                else {
                    print("   ", "|", separator:"", terminator:"")
                }
            }
            print()
        }
    }
}
