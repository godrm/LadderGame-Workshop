//
//  LadderGameType.swift
//  LadderGame
//
//  Created by 김효원 on 14/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderGameType {
    var output: LadderGameOutputType { get }
    var input: LadderGameInputType { get }
    
    mutating func run()
}

