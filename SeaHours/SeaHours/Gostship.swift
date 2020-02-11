//
//  gostship.swift
//  SeaHours
//
//  Created by 榮門　祐斗 on 2020/02/11.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation

class Gostship : Enemy {
    
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")
    
    init() {
        super.init(name : "幽霊船" ,maxHitPoint: 100*difficulty, defense: 20*difficulty, attack: 15*difficulty, magickAttack: 15*difficulty,exp: 40*difficulty/2)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
        var Skill_dif:[String] = []
        
        if (difficulty == 1){
            Skill_dif = ["体当たり","ショット","テールアタック"]
        }else if(difficulty == 10){
            Skill_dif = ["アイスランス","アイス","ストーンエッジ","ハイヒール","アークバイト"]
        }else if(difficulty == 30){
            Skill_dif = ["ブリザード","アイスランス","アースクエイク","グレイヒール","アイス"]
        }
               
        let randomNumber = Int.random(in: 1 ... 100)
        
        print(randomNumber)
        
               if (40 <= randomNumber){
                choseSkillName = Skill_dif[0]
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                return damege
               }else if(10 <= randomNumber){
                   choseSkillName = Skill_dif[1]
                   damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }else{
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                choseSkillName = Skill_dif[2]
                return damege
               }
    }
}

