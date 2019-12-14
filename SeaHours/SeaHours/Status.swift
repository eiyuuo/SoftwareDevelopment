//
//  Status.swift
//  SeaHours
//
//  Created by 真栄城魁人 on 2019/12/05.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

//各ステータスの設定および処理クラス
class Status {
    //初期ステータス(可変)
    var HP:Int = 20
    var MP:Int = 0
    var ATK:Int = 5
    var DEF:Int = 5
    var INT:Int = 0
    var EXP:Int = 13

    
    //get String
    func getHPs() -> String {
        return String(HP)
    }
    
    func getMPs() -> String {
        return String(MP)
    }
    
    func getATKs() -> String {
        return String(ATK)
    }
    
    func getDEFs() -> String {
        return String(DEF)
    }
    
    func getINTs() -> String {
        return String(INT)
    }
    
    func getEXPs() -> String {
        return String(EXP)
    }
    
    
    
    //get Int
    func getHP() -> Int {
        return Int(HP)
    }
    
    func getMP() -> Int {
        return Int(MP)
    }
    
    func getATK() -> Int {
        return Int(ATK)
    }
    
    func getDEF() -> Int {
        return Int(DEF)
    }
    
    func getINT() -> Int {
        return Int(INT)
    }
    
    func getEXP() -> Int {
        return Int(EXP)
    }
    
    
    
    //set Number
    func setEXP(point: Int) {
        EXP = point
    }
    
    func setHP(point: Int) {
        HP = point
    }
    
    func setMP(point: Int) {
        MP = point
    }
    
    func setATK(point: Int) {
        ATK = point
    }
    
    func setDEF(point: Int) {
        DEF = point
    }
    
    func setINT(point: Int) {
        INT = point
    }
    
    
}
