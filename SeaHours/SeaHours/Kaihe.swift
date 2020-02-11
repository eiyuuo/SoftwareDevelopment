////
////  Kaihe.swift
////  SeaHours
////
////  Created by 島袋太智 on 2020/02/10.
////  Copyright © 2020 島袋太智. All rights reserved.
////
//
import Foundation

class Kaihe : Enemy {
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")

    init() {
        super.init(name : "カイヘイ" ,maxHitPoint: 17*difficulty, defense: 7*difficulty, attack: 15*difficulty, magickAttack: 10*difficulty,exp: 10*difficulty)

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
        
        if (30 <= randomNumber){
            choseSkillName = Skill_dif[0]
            damege = skill.choseSkill(skillName : choseSkillName, attack : attack, magickAttack : magickAttack)
            return damege
        }else{
            choseSkillName = Skill_dif[1]
            damege = skill.choseSkill(skillName : choseSkillName, attack : attack, magickAttack : magickAttack)
            return damege
        }
    }
}
