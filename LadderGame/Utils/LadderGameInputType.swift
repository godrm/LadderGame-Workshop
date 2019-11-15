//
//  LadderGameInput.swift
//  LadderGame
//
//  Created by 김효원 on 15/11/2019.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

protocol LadderGameInputType {
    func readPlayerNames() -> [String]
    func readHight() -> Int
}
