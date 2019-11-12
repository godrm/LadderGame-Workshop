//
//  progress.swift
//  LadderGame
//
//  Created by Denis on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation
class ProgressLadder {
    static func createLadderModel(height: Int, nameList: [String]) -> LadderModel {
        let playerList = nameList.map({LadderPlayer(name:$0)})
        let object = LadderObject(height: height)
        return LadderModel(objct: object, playerList: playerList)
    }
}
