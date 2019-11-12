//
//  LadderPlayer.swift
//  LadderGame
//
//  Created by YOUTH2 on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol Playerable {
    var name: String { get set }
}

struct LadderPlayer: Playerable {
    var name = ""
}

