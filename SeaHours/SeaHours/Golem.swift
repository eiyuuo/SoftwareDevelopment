//
//  Golem.swift
//  SeaHours
//
//  Created by 知花　偉織 on 2020/02/10.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation
class Golem : Enemy {
    
    //ステータス記述
    init() {
        super.init(name : "ゴレ" ,maxHitPoint: 50, defense: 150, attack: 5, magickAttack: 15)
    }
    var choseSkillName : String = ""
    override func selectSkill() -> Double {
        
        var damege :Double
        let randomNumber = Int.random(in: 1 ... 100)
        if (60<=randomNumber){
            damege = self.skill.nomalAttack(attack: attack, randomNumber: randomNumber)
            choseSkillName = "通常攻撃"
            return Double(damege)
        }else{
            damege = self.skill.stone(magickAttack: magickAttack, randomNumber: randomNumber)
            choseSkillName = "ストーン"
            return Double(damege)
            
        }
    }
}
