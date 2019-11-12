//
//  LadderInput.swift
//  LadderGame
//
//  Created by DSLee on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol Inputable {
    associatedtype Result
    func read() -> Result
}

struct LadderInputHeight<T>: Inputable {
    typealias Result = T

    func read() -> Result {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return (Int(height) ?? 0) as! T
    }
}

struct LadderInputName<T>: Inputable {
    typealias Result = T

    func read() -> Result {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)} as! T
    }
}

protocol Outputable {
    func printLadders(_ option: LadderGameOption)
}

struct LadderOutput: Outputable {
    func printLadders(_ option: LadderGameOption) {
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
