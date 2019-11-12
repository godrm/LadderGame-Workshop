//
//  ConsoleWriter.swift
//  LadderGame
//
//  Created by Yong Jae Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class ConsoleWriter: WriterType {
    
    func printLadders(height: Int, players: [LadderPlayer]) {
        for _ in 0..<height {
            print("|", terminator:"")
            for _ in 0..<players.count {
                if Int(arc4random_uniform(2))==1 {
                    print("---", "|", separator:"", terminator:"")
                }
                else {
                    print("   ", "|", separator:"", terminator:"")
                }
            }
            print()
        }
    }
    
}
