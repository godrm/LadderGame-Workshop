//
//  LadderGameInput.swift
//  LadderGame
//
//  Created by 이규진 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class LadderGameInput {
    let core: LadderGameCore
    
    init(core: LadderGameCore) {
        self.core = core
    }

    func readPlayerNames() {
        print("참여할 사람 이름을 입력하세요.")
        
        let input = readLine() ?? ""
        let names = input.split(separator: ",").map{ String($0) }
        
        core.userDidInputNames(names)
    }
    
    func readHeight() {
        print("사다리 높이를 입력해주세요.")
        let input = readLine() ?? ""
        
        core.userDidInputHeight(Int(input) ?? 0)
    }
}
