//
//  Golem.swift
//  SeaHours
//
//  Created by 知花　偉織 on 2020/02/10.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation
class Golem : Enemy {
    
    //ステータス記述
    init() {
        super.init(name : "ゴ-レム" ,maxHitPoint: 50, defense: 150, attack: 5, magickAttack: 15,exp:10)
    }
    var choseSkill : String = ""
    var SkillName: String = ""
    override func selectSkill() -> Double {
        
        var damege :Double
        let randomNumber = Int.random(in: 1 ... 100)
        if (60<=randomNumber){
            SkillName = "通常攻撃"
            damege = skill.choseSkill(skillName: SkillName, attack: attack, magickAttack: magickAttack)
            return damege
            
        }else{
            SkillName = "ストーン"
            damege = skill.choseSkill(skillName: SkillName, attack: attack, magickAttack: magickAttack)
            return damege
        }
    }
}
