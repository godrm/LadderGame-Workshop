//
//  main.swift
//  LadderGame
//
//  Created by JK on 2019/11/11.
//  Copyright © 2019 codesquad. All rights reserved.

/* 원본파일
 
 struct SingleLadderGame {
 struct LadderPlayer {
 var name = ""
 }
 
 static func readHeight() -> Int {
 print("사다리 높이를 입력해주세요.")
 let height = readLine() ?? ""
 return Int(height) ?? 0
 }
 
 static func readPlayerNames() -> [String] {
 print("참여할 사람 이름을 입력하세요.")
 let players = readLine() ?? ""
 return players.split(separator: ",").map{String($0)}
 }
 
 var height = 0
 var players = [LadderPlayer]()
 
 mutating func run() {
 self.height = SingleLadderGame.readHeight()
 let names = SingleLadderGame.readPlayerNames()
 self.players = names.map({LadderPlayer(name:$0)})
 printLadders()
 }
 
 func printLadders() {
 for _ in 0..<height {
 print("|", terminator:"")
 for _ in 0..<players.count {
 if Int(arc4random_uniform(2))==1 {
 print("---", "|", separator:"", terminator:"")
 }
 else {
 print("   ", "|", separator:"", terminator:"")
 }
 }
 print()
 }
 }
 }
 
 var game = SingleLadderGame()
 game.run()
 */
import Foundation

protocol InputLadderGameProtocol {
    var readHeight: () -> Int {get}
    var readPlayerNames: () -> [String] {get}
}

protocol RunLadderGameProtocol {
    var run: ()->Void {get}
}

protocol PrintLadderGameProtocol {
    var printLadder: ([LadderPlayer], Int)->Void {get}
}



struct ReadLadderGame: InputLadderGameProtocol{
    var readHeight: () -> Int = {
        print("사다리 높이를 입력해주세요.")
        let height = readLine() ?? ""
        return Int(height) ?? 0
    }
    
    var readPlayerNames: () -> [String] = {
        print("참여할 사람 이름을 입력하세요.")
        let players = readLine() ?? ""
        return players.split(separator: ",").map{String($0)}
    }
}
struct LadderPlayer {
    var name = ""
}

struct RunLadderGame: RunLadderGameProtocol {
    var run: ()->Void = {
        
        let height = ReadLadderGame().readHeight()
        let names = ReadLadderGame().readPlayerNames()
        let players = names.map({LadderPlayer(name:$0)})
        
        return PrintLadderGame().printLadder(players, height)
    }
}

struct PrintLadderGame: PrintLadderGameProtocol {
    var printLadder: ([LadderPlayer], Int) -> Void = {
        (players, height) in
        for _ in 0..<height {
            print("|", terminator:"")
            for _ in 0..<players.count {
                if Int(arc4random_uniform(2))==1 {
                    print("---", "|", separator:"", terminator:"")
                }
                else {
                    print("   ", "|", separator:"", terminator:"")
//                    문자나 상수표현 -> 변수로 표현하는게 좋음
                }
            }
            print()
        }
    }
}

RunLadderGame().run()

