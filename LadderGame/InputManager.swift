//
//  InputManager.swift
//  LadderGame
//
//  Created by Daheen Lee on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct InputManager {
    static let questionForLadderHeight = "사다리 높이를 입력해주세요."
    static let questionForPlayerNames = "참여할 사람 이름을 입력하세요."
    static let emptyString = ""
    
    static func readHeight() -> String {
        print(questionForLadderHeight)
        let height = readLine() ?? emptyString
        return height
    }
    
    static func readPlayerNames() -> String {
        print(questionForPlayerNames)
        let players = readLine() ?? emptyString
        return players
    }
}

extension String {
    func toInt() -> Int? {
        return Int(self)
    }
    
    func split(by seperator: String) -> [String] {
        return self.split(separator: ",").map{String($0)}
    }
}
