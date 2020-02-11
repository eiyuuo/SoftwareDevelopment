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
        super.init(name : "幽霊船" ,maxHitPoint: 200*difficulty, defense: 30*difficulty, attack: 10*difficulty, magickAttack: 15*difficulty,exp: 100*difficulty/2)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
        let randomNumber = Int.random(in: 1 ... 125)
        var Skill_dif:[String] = []
        if (difficulty == 1){
            Skill_dif = ["体当たり","ショット","ウィンド","ウィンドカッター","通常攻撃","ヒール"]
        }else if(difficulty == 10){
            Skill_dif = ["ショット","ウィンド","ウィンドカッター","ヒール","エアスラッシュ","テンペスト"]
        }else if(difficulty == 30){
            Skill_dif = ["ウィンドカッター","エアスラッシュ","ヒール","ハイヒール","ツヴァイセイバー","テンペスト"]
        }
        
        
        print(randomNumber)
        
               if (10 <= randomNumber){
                choseSkillName = Skill_dif[0]
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                return damege
               }
               else if(60 <= randomNumber){
                   choseSkillName = Skill_dif[1]
                   damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
               }
               else if(90 <= randomNumber){
                   choseSkillName = Skill_dif[2]
                   damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                   return damege
                
               }
                else if(110 <= randomNumber){
                    choseSkillName = Skill_dif[3]
                    damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                    return damege
                }
                else if(125 <= randomNumber){
                    choseSkillName = Skill_dif[4]
                    damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                    return damege
                }
               else{
                damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
                choseSkillName = Skill_dif[5]
                return damege
               }
    }
}

