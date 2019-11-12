//
//  OutputLadder.swift
//  LadderGame
//
//  Created by UramMyeongbu on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol HeightProtocol {
    var height: Int { get }
}

protocol PlayerProtocol {
    var player: [String] { get }
}

struct OutputLadder : HeightProtocol, PlayerProtocol {
    var height: Int
    var player: [String]
    
   init(height: Int, player: [String]) {
        self.height = height
        self.player = player
    }
    
    func printLadders() {
        for _ in 0..<height {
           print("|", terminator:"")
            for _ in 0..<player.count {
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
