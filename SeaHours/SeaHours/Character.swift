//
//  Character.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/11/30.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Character {
    let skill = Skill()
    
    var name: String
    var maxHitPoint: Int
    var nowHitPoint: Int
    var defense: Int
    var attack : Int
    //↓ステータスではintになってる
    var magickAttack: Int
    var isDead: Bool
    
    
    init(name : String, maxHitPoint : Int, defense : Int, attack : Int, magickAttack : Int) {
        self.name = name
        self.maxHitPoint = maxHitPoint
        self.nowHitPoint = self.maxHitPoint
        self.defense = defense
        self.attack = attack
        self.magickAttack = magickAttack
        self.isDead = false
    }
    
    func hitPointOpelate(changePoint : Int) {
        //現在のHPを増減させる管理
        nowHitPoint = nowHitPoint + changePoint
        if (nowHitPoint >= maxHitPoint){
            nowHitPoint = maxHitPoint
        }
    }
    
    func deadJudgment() {
        //やられたかどう確認する
        if (nowHitPoint < 1){
            isDead = true
        }
    }

    func damageCalculate(skillDamage : Int , enemyDefence : Int) -> Int {
        //最終的なダメージ　- 敵の防御力
        var damege : Int
        
        damege = skillDamage - enemyDefence
        if (damege < 0){
            damege = 0
        }
        return damege
    }
    
    func getIsDead() -> Bool { //死亡フラグのゲッター
        return isDead
    }
    
    func getDefense() -> Int { //ダメージ計算のメソッドで必要
        return defense
    }
    
    func getHitPoint() -> Int { //戦闘クラスでログとか表示に仕様
        return nowHitPoint
    }
}
