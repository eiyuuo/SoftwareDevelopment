//
//  MagicFish.swift
//  SeaHours
//
//  Created by 真栄城魁人 on 2019/12/19.
//  Copyright © 2019 島袋太智. All rights reserved.
//



import Foundation

class MagicFish : Enemy {
    
    init() {
        super.init(name : "マジックフィッシュ" ,maxHitPoint: 150, defense: 15, attack: 15, magickAttack: 40,exp: 40)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
               
            let randomNumber = Int.random(in: 1 ... 100)
        
        
               if (70 <= randomNumber){
                choseSkillName = "アイス"
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else if(50 <= randomNumber){
                   choseSkillName = "ショット"
                   damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else if(40 <= randomNumber){
               choseSkillName = "ストーン"
               damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
               return Double(damege)
               }else if(10 <= randomNumber){
               choseSkillName = "ヒール"
               damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
               return damege
               }else{
               choseSkillName = "テールアタック"
               damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
               return Double(damege)
               }
    }
}
