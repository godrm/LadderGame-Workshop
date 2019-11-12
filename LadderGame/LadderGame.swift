//
//  LadderGame.swift
//  LadderGame
//
//  Created by UramMyeongbu on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderGame {
    func run() {
        let output = OutputLadder.init(height: InputLagger.readHeight(), player: InputLagger.readPlayerNames())
        output.printLadders()
    }    
}
