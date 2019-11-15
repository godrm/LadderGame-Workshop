//
//  LadderGameInput.swift
//  LadderGame
//
//  Created by 김효원 on 15/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderGameInput: LadderGameInputType {
    func readPlayerNames() -> [String] {
        print("player의 이름을 입력하세요.")
        let players = readLine() ?? ""
        
        return players.components(separatedBy: ",")
    }
    
    func readHight() -> Int{
        print("Ladder의 높이를 입력하세요.")
        let height = readLine() ?? ""
        
        return Int(height) ?? 0
    }
    
}
