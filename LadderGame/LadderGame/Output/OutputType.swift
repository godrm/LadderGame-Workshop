//
//  OutputType.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol OutputType {
    func printLadders(height: Int, players: [LadderPlayer])
}
