//
//  Player.swift
//  LadderGame
//
//  Created by Daheen Lee on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Players {
    private var names: [String] = []
    
    init(names: [String]) {
        self.names = names
    }
    
    var count: Int {
        return names.count
    }
}


