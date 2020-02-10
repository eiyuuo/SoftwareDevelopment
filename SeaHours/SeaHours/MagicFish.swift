//
//  MagicFish.swift
//  SeaHours
//
//  Created by 真栄城魁人 on 2019/12/19.
//  Copyright © 2019 島袋太智. All rights reserved.
//



import Foundation

class MagicFish : Enemy {
    
    init() {
        super.init(name : "マジックフィッシュ" ,maxHitPoint: 25, defense: 8, attack: 15, magickAttack: 80,exp: 10)
    }
    
    override func selectSkill() -> Double {
        var damege :Double
               
               let randomNumber = Int.random(in: 1 ... 100)
        
                print(randomNumber)
        
               if (40 <= randomNumber){
                   damege = self.skill.ice(magickAttack: magickAttack, randomNumber: randomNumber)
                   choseSkillName = "アイス"
                   return Double(damege)
               }else if(10 <= randomNumber){
                   damege = self.skill.shot(magickAttack: magickAttack, randomNumber: randomNumber)
                   choseSkillName = "ショット"
                   return Double(damege)
               }else{
               damege = self.skill.tailAttack(attack: attack, randomNumber: randomNumber)
               choseSkillName = "テールアタック"
               return Double(damege)
               }
    }
}
