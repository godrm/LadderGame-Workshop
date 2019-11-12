//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame {
    let reader: ReaderType
    let writer: WriterType
    
    init(
        reader: ReaderType = Reader(),
        writer: WriterType = Writer()
    ) {
        self.reader = reader
        self.writer = writer
    }
    
    func run() {
        let height = reader.getHeight()
        let players = reader.getPlayerNames()
        
        writer.printLadders(height: height, players: players)
    }
}

let game = SingleLadderGame()
game.run()

