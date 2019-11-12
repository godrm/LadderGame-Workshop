//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    
    mutating func run() {
        let model = ProgressLadder.createLadderModel(height: InputLadder.readHeight(),
                                                     nameList: InputLadder.readPlayerNames())
        OutPutLadder.printLadders(model)
    }
}

var game = SingleLadderGame()
game.run()
