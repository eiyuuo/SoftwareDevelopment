//
//  Slime.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Slime : Enemy {
    
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")
    
    //ステータス記述
    init() {
        super.init(name : "スライム" ,maxHitPoint: 12*difficulty, defense: 7*difficulty, attack: 12*difficulty, magickAttack: 2*difficulty, exp: 3*difficulty/2)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
               
        let randomNumber = Int.random(in: 1 ... 100)
        
        
        var Skill_dif:[String] = []
        
        if (difficulty == 1){
            Skill_dif = ["通常攻撃","体当たり"]
        }else if(difficulty == 10){
            Skill_dif = ["通常攻撃","体当たり"]
        }else if(difficulty == 30){
            Skill_dif = ["通常攻撃","体当たり"]
        }
        
        
        if (80 <= randomNumber){
               choseSkillName = Skill_dif[0]
               damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
               return damege
           }else{
           choseSkillName = Skill_dif[1]
           damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
           return Double(damege)
        }

    }
}
