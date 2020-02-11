//
//  Slime.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Slime : Enemy {
    
    //ステータス記述
    init() {
        super.init(name : "スライム" ,maxHitPoint: 12, defense: 7, attack: 12, magickAttack: 2, exp: 3)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
               
               let randomNumber = Int.random(in: 1 ... 100)
        
                print(randomNumber)
        
               if (80 <= randomNumber){
                   choseSkillName = "通常攻撃"
                   damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else{
               choseSkillName = "体当たり"
               damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
               return Double(damege)
               }

    }
}
