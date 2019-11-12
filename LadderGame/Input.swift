//
//  Input.swift
//  LadderGame
//
//  Created by Jo JANGHUI on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderInputType {
    func getHeight() -> Int
    func getPlayerNames() -> [String]
}

final class LadderInput: LadderInputType {
    private enum InputCase{
        case height
        case playerNames
    }
    
    func getHeight() -> Int {
        showQuestion(inputCase: .height)
        return Int(setReadLine()) ?? 0
    }
    
    func getPlayerNames() -> [String] {
        showQuestion(inputCase: .playerNames)
        return setReadLine().split(separator: ",").map{String($0)}
    }
    
    private func showQuestion(inputCase: InputCase) {
        let question = inputCase == .height ? "사다리 높이를 입력해주세요." : "참여할 사람 이름을 입력하세요."
        print(question)
    }
    
    private func setReadLine() -> String {
        return readLine() ?? ""
    }
}
