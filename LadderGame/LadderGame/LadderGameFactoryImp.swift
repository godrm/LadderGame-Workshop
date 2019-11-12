//
//  LadderGameFactoryImp.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


struct LadderGameFactoryImp: LadderGameFactory {

    var input: LadderGameInput {
        return LadderGameInputImp()
    }
    var processor: LadderGridProcessor {
        return LadderGridProcessorImp()
    }
    var output: LadderGameOutput {
        return LadderGameOutputImp()
    }
    func make() -> LadderGame {
        return LadderGameImp(input: self.input,
                             processor: self.processor,
                             output: output)
    }

}
