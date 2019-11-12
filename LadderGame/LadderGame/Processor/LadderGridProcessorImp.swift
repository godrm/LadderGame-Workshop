//
//  LadderGridProcessorImp.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


struct LadderGridProcessorImp: LadderGridProcessor {

    func process(players: [LadderPlayer],
                 height: Int) -> LadderGrid {
        let content = (0..<height).flatMap { _ -> String in
            let innerContent = (0..<players.count).reduce("") { (result, _) -> String in
                result
                    + (Int(arc4random_uniform(2)) == 1 ? Wall.horizontal : Wall.spaceHorizontal)
                    + Wall.vertical
            }
            return Wall.vertical + innerContent + "\n"
        }
        return LadderGrid(content: String(content))
    }

    private enum Wall {
        static let vertical = "|"
        static let horizontal = "---"
        static let spaceHorizontal = "   "
    }

}
