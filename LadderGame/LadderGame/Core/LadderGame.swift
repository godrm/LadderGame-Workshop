//
//  LadderGame.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol LadderGame {

    init(input: LadderGameInput,
         processor: LadderGridProcessor,
         output: LadderGameOutput)

    func run()

}
