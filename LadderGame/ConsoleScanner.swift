//
//  Scanner.swift
//  LadderGame
//
//  Created by 조수환 on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

import Foundation

class ConsoleScanner {
    static func readInt(withPrompt prompt: String? = nil) -> Int? {
        if let prom = prompt { print(prom) }

        guard let result = readLine() else {
            return nil
        }

        return Int(result)
    }

    static func readString(withPrompt prompt: String? = nil) -> String? {
        if let prom = prompt { print(prom) }
        
        return readLine()
    }
}
