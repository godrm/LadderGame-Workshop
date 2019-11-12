//
//  LadderGameCore.swift
//  LadderGame
//
//  Created by 이규진 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class LadderGameCore {
    private var height = 0
    private var players = [LadderPlayer]()
    private let printer = LadderGamePrinter()
        
    func userDidInputNames(_ names: [String]) {
        self.players = names.map { LadderPlayer(name: $0) }
    }
    
    func userDidInputHeight(_ height: Int) {
        self.height = height
        userInputCompleted()
    }
    
    private func userInputCompleted() {
        printer.printLadders(height: height, players: players)
    }
}
