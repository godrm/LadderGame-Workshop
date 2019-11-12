//
//  SingleLadderGameType.swift
//  LadderGame
//
//  Created by Presto on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

protocol SingleLadderGameType {

  associatedtype Input: SingleLadderGameInputType

  associatedtype Output: SingleLadderGameOutputType

  func run()
}

protocol SingleLadderGameInputType {

  func readHeight() -> Int

  func readPlayerNames() -> [String]
}

protocol SingleLadderGameOutputType {

  func printLadderHeightDescription()

  func printPlayersDescription()

  func printLadderGrid(_: [[String]])
}
