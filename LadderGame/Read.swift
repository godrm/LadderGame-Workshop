//
//  Read.swift
//  LadderGame
//
//  Created by 장혜준 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

enum ReadType {
    case height
    case playerNames
    
    var userInputText: String {
        return readLine() ?? ""
    }
}

struct Read {
    static var height: Int {
        printGuideMessage(.height)
        
        let height: String = ReadType.height.userInputText

        return Int(height) ?? 0
    }

    static var playerNames: [String] {
        printGuideMessage(.playerNames)
        
        let players: String = ReadType.playerNames.userInputText
        
        return players.split(separator: ",")
            .map { String($0) }
    }
    
    static func printGuideMessage(_ type: ReadType) {
        switch type {
        case .height:
            print("사다리 높이를 입력해주세요.")
        case .playerNames:
            print("참여할 사람 이름을 입력하세요.")
        }
    }
}
