//
//  Character.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/11/30.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var maxHitPoint: Int
    var nowHitPoint: Int
    var defense: Int
    var attack : Int
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
    
    func hitPointOpelate() -> Int {
        //現在のHPを増減させる管理
        return 0
    }
    
    func deadJudgment() {
        //やられたかどう確認する
    }
    
    func damageCalculate() -> Int {
        //最終的なダメージ　- 敵の防御力
        return 0
    }
    
    func getDefense() -> Int {
        return defense
    }
    
    func getHitPoint() -> Int {
        return nowHitPoint
    }
}
