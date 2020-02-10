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
        return String(self.HP)
    }
    
    func getSPs() -> String {
        return String(self.SP)
    }
    
    func getATKs() -> String {
        return String(self.ATK)
    }
    
    func getDEFs() -> String {
        return String(self.DEF)
    }
    
    func getINTs() -> String {
        return String(self.INT)
    }
    
    func getEXPs() -> String {
        return String(self.EXP)
    }
    
    
    
    //get Int
    func getHP() -> Int {
        return Int(self.HP)
    }
    
    func getSP() -> Int {
        return Int(self.SP)
    }
    
    func getATK() -> Int {
        return Int(self.ATK)
    }
    
    func getDEF() -> Int {
        return Int(self.DEF)
    }
    
    func getINT() -> Int {
        return Int(self.INT)
    }
    
    func getEXP() -> Int {
        return Int(self.EXP)
    }
    
    
    
    //set Number
    func setEXP(point: Int) {
        self.EXP = point
    }
    
    func setHP(point: Int) {
        self.HP = point
    }
    
    func setSP(point: Int) {
        self.SP = point
    }
    
    func setATK(point: Int) {
        self.ATK = point
    }
    
    func setDEF(point: Int) {
        self.DEF = point
    }
    
    func setINT(point: Int) {
        self.INT = point
    }
    
    
}
