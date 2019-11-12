//
//  UserInputType.swift
//  LadderGame
//
//  Created by Seonghun Kim on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

// 프로토콜의 이름은 형용사로 표현하도록 애플이 가이드 하고 있다.
protocol UserInputType {
    func getHeight() -> Int
    func getPlayerNames() -> [LadderPlayer]
}
