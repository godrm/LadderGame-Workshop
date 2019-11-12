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
            self.startHeightPrint()
            for _ in 0 ..< model.playerList.count {
                 let isLine = Int(arc4random_uniform(2)) == 1
                self.progressHeightPrint(isLine)
            }
            self.nextHeightPrint()
        }
    }
    
    private class func startHeightPrint() {
        print("|", terminator:"")
    }
    
    private class func progressHeightPrint(_ isLine: Bool) {
        if isLine == true {
            print("---", "|", separator:"", terminator:"")
        } else {
            print("   ", "|", separator:"", terminator:"")
        }
    }
    
    private class func nextHeightPrint() {
        print()
    }

}
