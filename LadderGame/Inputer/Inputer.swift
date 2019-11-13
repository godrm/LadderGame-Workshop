//
//  Inputer.swift
//  LadderGame
//
//  Created by joon-ho kil on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

struct Inputer {
    static func read() -> String {
        return readLine() ?? String(SpecialCharacters.blank.rawValue)
    }
}
