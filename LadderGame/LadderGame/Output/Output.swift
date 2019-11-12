//
//  Output.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Output {
}

extension Output: OutputType {
    func printLadders(height: Int, players: [LadderPlayer]) {
        for _ in 0..<height {
            print("|", terminator:"")
            // 하드코딩 되어 있어 의도를 알기 힘들다.
            for _ in 0..<players.count {
                if Int(arc4random_uniform(2))==1 {
                    print("---", "|", separator:"", terminator:"")
                    // 하드코딩 되어 있어 의도를 알기 힘들다.
                }
                else {
                    print("   ", "|", separator:"", terminator:"")
                    // 하드코딩 되어 있어 의도를 알기 힘들다.
                }
            }
            print()
        }
        // 문자나 상수로 표현됭더 있는 부분들은 의도를 명확하게 할 수 있도록 변경 해주면 좋다.
    }
}
