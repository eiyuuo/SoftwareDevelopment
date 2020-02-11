//
//  SeaRabbit.swift
//  SeaHours
//
//  Created by 島袋太智 on 2020/02/10.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation

class SeaRabbit : Enemy {

    init() {

        super.init(name : "ウミウサギ" ,maxHitPoint: 10, defense: 5, attack: 10, magickAttack: 10, exp: 10)

    }

    override func selectSkill() -> Double {
        var damege :Double
        //let randomBool = Bool.random()
        let randomNumber = Int.random(in: 1 ... 100)
        
        if (30 <= randomNumber){
            damege = self.skill.nomalAttack(attack: attack, randomNumber: randomNumber)
            choseSkillName = "通常攻撃"
            return Double(damege)
        }else{
            damege = self.skill.tailAttack(attack: attack, randomNumber: randomNumber)
            choseSkillName = "体当たり"
            return Double(damege)
        }
    }
}
