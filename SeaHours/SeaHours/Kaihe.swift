////
////  Kaihe.swift
////  SeaHours
////
////  Created by 島袋太智 on 2020/02/10.
////  Copyright © 2020 島袋太智. All rights reserved.
////
//
import Foundation

class Kaihe : Enemy {

    init() {
        super.init(name : "カイヘイ" ,maxHitPoint: 17, defense: 7, attack: 15, magickAttack: 10,exp: 10)

    }

    override func selectSkill() -> Double {
        var damege :Double
        var choseSkileName:String = ""
        //let randomBool = Bool.random()
        let randomNumber = Int.random(in: 1 ... 100)
        
        if (30 <= randomNumber){
            choseSkileName = "通常攻撃"
            damege = skill.choseSkill(skillName : choseSkileName, attack : attack, magickAttack : magickAttack)
            return damege
        }else{
            choseSkileName = "テールアタック"
            damege = skill.choseSkill(skillName : choseSkileName, attack : attack, magickAttack : magickAttack)
            return damege
        }
    }
}
