//
//  Read.swift
//  LadderGame
//
//  Created by Jinwoo Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol ReaderType
{
    func getHeight() -> Int
    func getPlayerNames() -> [String]
}

class Reader: ReaderType {
    func getHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    func getPlayerNames() -> [String] {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{ String($0) }
    }
}
