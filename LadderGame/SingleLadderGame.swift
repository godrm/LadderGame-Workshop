//
//  SingleLadderGame.swift
//  LadderGame
//
//  Created by Presto on 2019/11/12.
//  Copyright © 2019 codesquad. All rights reserved.
//

struct SingleLadderGame: SingleLadderGameType {

  private let input: SingleLadderGameInputType
  private let output: SingleLadderGameOutputType
  private let process: SingleLadderGameProcessType

  init(input: SingleLadderGameInputType, output: SingleLadderGameOutputType, process: SingleLadderGameProcessType) {
    self.input = input
    self.output = output
    self.process = process
  }

  struct LadderPlayer {

    var name = ""
  }

  func run() {
    let input = SingleLadderGame.Input()
    let process = SingleLadderGame.Process()
    let output = SingleLadderGame.Output()

    output.printLadderHeightDescription()
    let height = input.readHeight()
    output.printPlayersDescription()
    let names = input.readPlayerNames()
    let players = process.namesToLadderPlayers(names)

    let grid = process.ladderGrid(forHeight: height, players: players)
    output.printLadderGrid(grid)
  }
}

extension SingleLadderGame {

  struct Input: SingleLadderGameInputType {

    func readHeight() -> Int {
      let height = readLine() ?? ""
      return Int(height) ?? 0
    }

    func readPlayerNames() -> [String] {
      let players = readLine() ?? ""
      return players.split(separator: ",").map { String($0) }
    }
  }
}

extension SingleLadderGame {

  struct Output: SingleLadderGameOutputType {

    func printLadderHeightDescription() {
      print("사다리 높이를 입력해주세요.")
    }

    func printPlayersDescription() {
      print("참여할 사람 이름을 입력하세요.")
    }

    func printLadderGrid(_ grid: [[String]]) {
      for row in grid {
        for column in row {
          print(column, separator: "", terminator: "")
        }
      }
    }
  }
}

extension SingleLadderGame {

  struct Process: SingleLadderGameProcessType {

    func namesToLadderPlayers(_ names: [String]) -> [LadderPlayer] {
      names.map(LadderPlayer.init)
    }

    func ladderGrid(forHeight height: Int, players: [LadderPlayer]) -> [[String]] {
      var grid = [[String]]()
      for _ in 0 ..< height {
        var row = [String]()
        row.append(Constant.separator)
        for _ in 0 ..< players.count {
          if Int.random(in: 0 ..< 2) == 1 {
            row.append(contentsOf: [Constant.horizontalLine, Constant.separator])
          } else {
            row.append(contentsOf: [Constant.horizontalEmptySpace, Constant.separator])
          }
        }
        row.append("\n")
        grid.append(row)
      }
      return grid
    }
  }
}
