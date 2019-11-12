//
//  Model.swift
//  LadderGame
//
//  Created by Denis on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct LadderPlayer {
    var name = ""
}

struct LadderObject {
    var height :Int
}

struct LadderModel {
    var objct :LadderObject
    var playerList : [LadderPlayer]
}
