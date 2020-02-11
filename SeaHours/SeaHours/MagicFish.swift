//
//  MagicFish.swift
//  SeaHours
//
//  Created by 真栄城魁人 on 2019/12/19.
//  Copyright © 2019 島袋太智. All rights reserved.
//



import Foundation

class MagicFish : Enemy {
    
    var difficulty:Int = UserDefaults.standard.integer(forKey: "difficulty")
    
    init() {
        super.init(name : "マジックフィッシュ" ,maxHitPoint: 150*difficulty*2, defense: 25*difficulty, attack: 15*difficulty, magickAttack: 40*difficulty,exp: 20*difficulty)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
               
        let randomNumber = Int.random(in: 1 ... 100)
        
        
        var Skill_dif:[String] = []
        
        if (difficulty == 1){
            Skill_dif = ["アイス","ショット","ストーン","ヒール","テールアタック"]
        }else if(difficulty == 10){
            Skill_dif = ["アイスランス","アイス","ストーンエッジ","ハイヒール","アークバイト"]
        }else if(difficulty == 30){
            Skill_dif = ["ブリザード","アイスランス","アースクエイク","グレイヒール","アイス"]
        }
        
        
        
        if (70 <= randomNumber){
         choseSkillName = Skill_dif[0]
         damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
            return damege
        }else if(50 <= randomNumber){
            choseSkillName = Skill_dif[1]
            damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
            return damege
        }else if(40 <= randomNumber){
        choseSkillName = Skill_dif[2]
        damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
        return Double(damege)
        }else if(10 <= randomNumber){
        choseSkillName = Skill_dif[3]
        damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
        return damege
        }else{
        choseSkillName = Skill_dif[4]
        damege = skill.choseSkill(skillName: choseSkillName, attack: attack, magickAttack: magickAttack)
        return Double(damege)
        }
        
    }
}
