//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

let consoleReader = ConsoleReader()
let consoleWriter = ConsoleWriter()

let game = SingleLadderGame(
    reader: consoleReader,
    writer: consoleWriter
)

game.run()
