//
//  Output.swift
//  LadderGame
//
//  Created by CheolHyeon Park on 11/12/19.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Output {
	static func printLadders(with ledder: Ledder, players: [Player]) {
		for _ in 0..<ledder.height {
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
