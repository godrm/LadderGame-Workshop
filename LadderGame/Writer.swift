//
//  Writer.swift
//  LadderGame
//
//  Created by Jinwoo Kim on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol WriterType {
    func printLadders(height: Int, players: [String])
}

struct Writer: WriterType {
    func printLadders(height: Int, players: [String]) {
        for _ in 0 ..< height {
            print("|", terminator:"")
            for _ in 0 ..< players.count {
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
