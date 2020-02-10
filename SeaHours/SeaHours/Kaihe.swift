////
////  Kaihe.swift
////  SeaHours
////
////  Created by 島袋太智 on 2020/02/10.
////  Copyright © 2020 島袋太智. All rights reserved.
////
//
//import Foundation
//
//class Kaihe : Enemy {
//
//    init() {
//        super.init(name : "カイヘイ" ,maxHitPoint: 17, defense: 7, attack: 15, magickAttack: 10)
//    }
//
//    var damege :Double
//
//    let randomBool = Bool.random()
//    let randomNumber = Int.random(in: 1 ... 100)
//
//    if (50 <= randomNumber){
//        damege = self.skill.nomalAttack(attack: attack, randomNumber: randomNumber)
//        choseSkillName = "通常攻撃"
//        return Double(damege)
//    }else if(10 <= randomNumber){
//        damege = self.skill.fire(magickAttack: magickAttack, randomNumber: randomNumber)
//        choseSkillName = "ショット"
//        return Double(damege)
//    }else{
//       damege = self.skill.fire(magickAttack: attack, randomNumber: randomNumber)
//       choseSkillName = "テールアタック"
//       return Double(damege)
//    }
//}
