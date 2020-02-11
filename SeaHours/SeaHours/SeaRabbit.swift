//
//  SeaRabbit.swift
//  SeaHours
//
//  Created by 島袋太智 on 2020/02/10.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation

class SeaRabbit : Enemy {
    
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")

    init() {
        super.init(name : "ウミウサギ" ,maxHitPoint: 10*difficulty, defense: 3*difficulty, attack: 10*difficulty, magickAttack: 10*difficulty, exp: 10*difficulty/2)
    }

    override func selectSkill() -> Double {
        var damege :Double
        var Skill_dif:[String] = []
        
        if (difficulty == 1){
            Skill_dif = ["通常攻撃","テールアタック"]
        }else if(difficulty == 10){
            Skill_dif = ["アイスランス","アイス","ストーンエッジ","ハイヒール","アークバイト"]
        }else if(difficulty == 30){
            Skill_dif = ["ブリザード","アイスランス","アースクエイク","グレイヒール","アイス"]
        }
        
        let randomNumber = Int.random(in: 1 ... 100)
        var choseSkileName:String = ""
        
        if (30 <= randomNumber){
            choseSkillName = Skill_dif[0]
            damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
            return Double(damege)
        }else{
            choseSkillName = Skill_dif[1]
            damege = self.skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
            return Double(damege)
        }
    }
}
