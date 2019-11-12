//
//  out.swift
//  LadderGame
//
//  Created by Denis on 12/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class OutPutLadder {

    class func printLadders(_ model :LadderModel) {
        for _ in 0 ..< model.objct.height {
            print("|", terminator:"")
            for _ in 0 ..< model.playerList.count {
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
