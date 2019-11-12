//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

let height = InputManager.readHeight()
let names = InputManager.readPlayerNames()
let players = Players(names: names.split(by: ","))
let ladderGame = LadderGame(height: height.toInt() ?? 0, players: players)
OutputManager.start(ladderGame)



