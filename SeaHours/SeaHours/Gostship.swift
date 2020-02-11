//
//  gostship.swift
//  SeaHours
//
//  Created by 榮門　祐斗 on 2020/02/11.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation

class Gostship : Enemy {
    
    init() {
        super.init(name : "幽霊船" ,maxHitPoint: 100, defense: 20, attack: 15, magickAttack: 15,exp: 100)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
               
               let randomNumber = Int.random(in: 1 ... 100)
        
                print(randomNumber)
        
               if (40 <= randomNumber){
                choseSkillName = "体当たり"
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                return damege
               }else if(10 <= randomNumber){
                   choseSkillName = "ショット"
                   damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else{
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                choseSkillName = "テールアタック"
                return damege
               }
    }
}

