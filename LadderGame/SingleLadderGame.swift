//
//  progress.swift
//  LadderGame
//
//  Created by Denis on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct SingleLadderGame {
    
    mutating func run() {
        let model = LadderModel(height: InputLadder.readHeight(),
                                nameList: InputLadder.readPlayerNames())
        OutPutLadder.printLadders(model)
    }
}
