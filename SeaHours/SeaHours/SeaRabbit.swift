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
        var choseSkileName:String = ""
        
        if (30 <= randomNumber){
            choseSkileName = "通常攻撃"
            damege = skill.choseSkill(skillName : choseSkileName, attack : attack, magickAttack : magickAttack)
            return damege
        }else{
            choseSkileName = "体当たり"
            damege = skill.choseSkill(skillName : choseSkileName, attack : attack, magickAttack : magickAttack)
            return damege
        }
    }
}
