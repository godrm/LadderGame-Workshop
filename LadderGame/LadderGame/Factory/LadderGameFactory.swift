//
//  LadderGameFactory.swift
//  LadderGame
//
//  Created by 이광용 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation


protocol LadderGameFactory {

    var input: LadderGameInput { get }
    var output: LadderGameOutput { get }
    func make() -> LadderGame

}
