//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

import Foundation

struct SingleLadderGame : SingleLadderGameRunnable {
    typealias PlayerType = Player
}

extension SingleLadderGame {
    struct Player : Playerable {
        let name:String
    }
}

protocol SingleLadderGameRunnable {
    associatedtype PlayerType : Playerable
}

typealias LadderHeight = Int

extension SingleLadderGameRunnable {
    private func printLadders(height: LadderHeight?, players:[PlayerType]) {
        height?.printLadderHeight { players.printPlayersLadder() }
    }
}

extension LadderHeight {
    func printLadderHeight(_ forEach:() -> ()) {
        for _ in 0..<self {
            print("|", terminator:"")
            forEach()
        }
    }
}

extension Array where Element : Playerable {
    func printPlayersLadder() {
        for _ in 0..<self.count {
            if Int(arc4random_uniform(2))==1 {
                print("---", "|", separator:"", terminator:"")
            }
            else {
                print("   ", "|", separator:"", terminator:"")
            }
            print()
        }
    }
}

extension SingleLadderGameRunnable where Self: LadderPlayerReadable, Self : LadderHeightReadable {
    func run() {
        printLadders(height: Self.readHeight(),
                     players: Self.readPlayers())
    }
}

extension SingleLadderGame : LadderPlayerReadable, LadderHeightReadable { }

protocol Playerable {
    var name:String { get }
    
    init(name:String)
}

protocol LadderHeightReadable { }

extension LadderHeightReadable {
    static func readHeight() -> Int? {
        print("사다리 높이를 입력해주세요.")
        guard let string = readLine() else { return nil }
        guard let result = Int(string) else { return nil }
        return result
    }
}

protocol LadderPlayerReadable { }

extension LadderPlayerReadable {
    static func readPlayers<P:Playerable>() -> [P] {
        print("참여할 사람 이름을 입력하세요.")
        guard let string = readLine() else { return [] }
        return string.split(separator: ",").map(String.init).map(P.init)
    }
}

SingleLadderGame().run()
