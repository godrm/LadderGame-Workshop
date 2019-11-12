//
//  LadderGridProcessor.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol LadderGridProcessor {

    func process(players: [LadderPlayer],
                 height: Int) -> LadderGrid

}
