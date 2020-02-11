//
//  Golem.swift
//  SeaHours
//
//  Created by 知花　偉織 on 2020/02/10.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation
class Golem : Enemy {
    
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")
    //ステータス記述
    init() {
        super.init(name : "ゴ-レム" ,maxHitPoint: 50*difficulty, defense: 150*difficulty, attack: 5*difficulty, magickAttack: 15*difficulty,exp:10*difficulty/2)
        }
    var choseSkill : String = ""
    var SkillName: String = ""
    override func selectSkill() -> Double {
        var damege :Double
        var Skill_dif:[String] = []
        
        if (difficulty == 1){
            Skill_dif = ["通常攻撃","体当たり","ストーン"]
        }else if(difficulty == 10){
            Skill_dif = ["アイスランス","アイス","ストーンエッジ"]
        }else if(difficulty == 30){
            Skill_dif = ["ブリザード","アイスランス","アースクエイク"]
        }
        
        let randomNumber = Int.random(in: 1 ... 100)
        if (60<=randomNumber){
            SkillName = Skill_dif[0]
            damege = skill.choseSkill(skillName: SkillName, attack: attack, magickAttack: magickAttack)
            return damege
            
        }else if(30<=randomNumber){
            SkillName = Skill_dif[1]
            damege = skill.choseSkill(skillName: SkillName, attack: attack, magickAttack: magickAttack)
            return damege
        }
        else{
            SkillName = Skill_dif[2]
            damege = skill.choseSkill(skillName: SkillName, attack: attack, magickAttack: magickAttack)
            return damege
        }
        
    }
}
