//
//  UserInput.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct UserInput {
}

extension UserInput: UserInputType {
    func getHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = getUserInput()
        return Int(height) ?? 0
    }
    
    func getPlayerNames() -> [LadderPlayer] {
        print("참여할 사람 이름을 입력하세요.")
        let players = getUserInput()
        return players.split(separator: ",").map{String($0)}
    }
    
    private func getUserInput() -> String {
        return readLine() ?? ""
    }
}
