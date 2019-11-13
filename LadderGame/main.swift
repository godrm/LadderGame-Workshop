//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

Outputer.printAnnounce(Announce.height)
let height = Int(Inputer.read()) ?? Numbers.zero.rawValue

Outputer.printAnnounce(Announce.playerNames)
let players = Inputer.read()
                     .split(separator: Character(SpecialCharacters.comma.rawValue))
                     .map{String($0)}
                     .map{LadderPlayer(name:$0)}

Outputer.printLadders(height: height, players: players)
