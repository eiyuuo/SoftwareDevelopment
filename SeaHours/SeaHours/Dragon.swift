//
//  Dragon.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Doragon : Enemy {
    init() {
        super.init(name : "ドラゴン", maxHitPoint: 200, defense: 30, attack: 50, magickAttack: 60, exp: 50)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
        
        print("hoge")
        print(nowHitPoint)
        print(nowHitPoint < maxHitPoint/10)
        print(maxHitPoint)
        
               if (nowHitPoint < maxHitPoint/10 ){
                choseSkillName = "ドラグテイル"
                damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else if(nowHitPoint < maxHitPoint/2){
                    if Bool.random() {
                        choseSkillName = "噛みつく"
                        damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                        return damege
                    } else {
                        choseSkillName = "ウィンドカッター"
                        damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                        return damege
                    }
               }else {
                   if Bool.random() {
                       choseSkillName = "テールアタック"
                       damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                       return damege
                   } else {
                       choseSkillName = "ウィンド"
                       damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                       return damege
                   }
               }
    }
}
