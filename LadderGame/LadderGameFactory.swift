//
//  LadderGameFactory.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol LadderGameFactory {

    var input: LadderGameInput { get }
    var output: LadderGameOutput { get }
    func make() -> LadderGame

}

struct LadderGameFactoryImp: LadderGameFactory {

    var input: LadderGameInput {
        return LadderGameInputImp()
    }
    var output: LadderGameOutput {
        return LadderGameOutputImp()
    }
    func make() -> LadderGame {
        return LadderGameImp(input: input,
                             output: output)
    }

}
