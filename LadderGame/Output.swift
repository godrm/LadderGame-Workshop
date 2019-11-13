//
//  Output.swift
//  LadderGame
//
//  Created by joon-ho kil on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Output {
    static func printLadders(height: Int, players: [LadderPlayer]) {
        func printRandom() {
            if Int(arc4random_uniform(2))==1 {
                print(Line.horizontal.rawValue, Line.vertical.rawValue, separator:SpecialCharacters.blank.rawValue, terminator:SpecialCharacters.blank.rawValue)
                return
            }
            
            print(Line.emptyHorizontal.rawValue, Line.vertical.rawValue, separator:SpecialCharacters.blank.rawValue, terminator:SpecialCharacters.blank.rawValue)
        }
        
        func printLadder() {
            print(Line.vertical.rawValue, terminator:SpecialCharacters.blank.rawValue)
            for _ in Numbers.ladderStart.rawValue..<players.count {
                printRandom()
            }
            print()
        }
        
        for _ in Numbers.heightStart.rawValue..<height {
            printLadder()
        }
    }
}
