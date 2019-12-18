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
    
    let userDefaults = UserDefaults.standard

    
    //初期ステータス(可変)
    var HP:Int = UserDefaults.standard.integer(forKey: "HPs")
    var SP:Int = UserDefaults.standard.integer(forKey: "SPs")
    var ATK:Int = UserDefaults.standard.integer(forKey: "ATKs")
    var DEF:Int = UserDefaults.standard.integer(forKey: "DEFs")
    var INT:Int = UserDefaults.standard.integer(forKey: "INTs")
    var EXP:Int = UserDefaults.standard.integer(forKey: "EXPs")
    
    
    //UserDefaultsに使用される初期ステータスの値設定
    init(){
        userDefaults.register(defaults: ["HPs": 20,"SPs": 5,"ATKs": 5,"DEFs": 5,"INTs": 5,"EXPs": 15])
        
    }

    
    //get String
    func getHPs() -> String {
        return String(HP)
    }
    
    func getSPs() -> String {
        return String(SP)
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
    
    func getSP() -> Int {
        return Int(SP)
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
    
    func setSP(point: Int) {
        SP = point
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
