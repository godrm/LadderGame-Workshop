//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by Yong Jae Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class SingleLadderGame {
    
    private let reader: ReaderType
    private let writer: WriterType
    
    init(reader: ReaderType, writer: WriterType) {
        self.reader = reader
        self.writer = writer
    }
    
    func run() {
        let height = reader.readLadderHeight()
        let players = reader.readPlayers()
        
        self.writer.printLadders(
            height: height,
            players: players
        )
    }
    
}
