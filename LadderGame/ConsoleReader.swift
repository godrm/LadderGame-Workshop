//
//  ConsoleReader.swift
//  LadderGame
//
//  Created by Yong Jae Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class ConsoleReader: ReaderType {
    
    func readLadderHeight() -> Int {
        print("사다리 높이를 입력해주세요.")
        guard let inputString = readLine(),
            let height = Int(inputString) else {
                return 0
        }
        return height
    }
    
    func readPlayers() -> [LadderPlayer] {
        print("참여할 사람 이름을 입력하세요.")
        guard let inputString = readLine() else {
            return []
        }
        return inputString.split(separator: ",")
            .map { String($0) }
            .map { LadderPlayer(name: $0) }
    }
    
}
