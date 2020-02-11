//
//  Dragon.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Doragon : Enemy {
    
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")
    
    init() {
        super.init(name : "ドラゴン", maxHitPoint: 200*difficulty, defense: 30*difficulty, attack: 50, magickAttack: 60*difficulty, exp: 50*difficulty/2)
    }
    
    override func selectSkill() -> Double {
        
        var damege :Double
        var Skill_dif:[String] = []
        
        if (difficulty == 1){
            Skill_dif = ["ドラグテイル","噛みつく","ウィンドカッター","テールアタック","ウィンド"]
        }else if(difficulty == 10){
            Skill_dif = ["アイスランス","アイス","ストーンエッジ","ハイヒール","アークバイト"]
        }else if(difficulty == 30){
            Skill_dif = ["ブリザード","アイスランス","アースクエイク","グレイヒール","アイス"]
        }

        
               if (nowHitPoint < maxHitPoint/10 ){
                choseSkillName = Skill_dif[0]
                damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else if(nowHitPoint < maxHitPoint/2){
                    if Bool.random() {
                        choseSkillName = Skill_dif[1]
                        damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                        return damege
                    } else {
                        choseSkillName = Skill_dif[2]
                        damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                        return damege
                    }
               }else {
                   if Bool.random() {
                       choseSkillName = Skill_dif[3]
                       damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                       return damege
                   } else {
                       choseSkillName = Skill_dif[4]
                       damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                       return damege
                   }
               }
    }
}
