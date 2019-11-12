//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

let height = Input.readHeight()
let names = Input.readPlayerNames()
let players = names.map({LadderPlayer(name:$0)})
Output.printLadders(height: height, players: players)
