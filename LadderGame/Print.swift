//
//  Print.swift
//  LadderGame
//
//  Created by 장혜준 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class Print {
    static let shared: Print = Print()
    
    var height = 0
    var players: [SingleLadderGame.Player] = []
    
    func printLadders() {
        for _ in 0 ..< height {
            print("|", terminator:"")
            for _ in 0 ..< players.count {
                if Int(arc4random_uniform(2)) == 1 {
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
