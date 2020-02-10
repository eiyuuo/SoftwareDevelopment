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
        super.init(name : "マジックフィッシュ" ,maxHitPoint: 350, defense: 20, attack: 10, magickAttack: 30)
    }
    
    var damege :Double
           
    let randomBool = Bool.random()
    let randomNumber = Int.random(in: 1 ... 100)
    
    if (40 <= randomNumber){
            damege = self.skill.ice(attack: magickAttack, randomNumber: randomNumber)
            choseSkillName = "アイス"
            return Double(damege)
        }else if(10 <= randomBool){
            damege = self.skill.shot(magickAttack: magickAttack, randomNumber: randomNumber)
            choseSkillName = "ショット"
            return Double(damege)
        }else{
        damege = self.skill.tailAttack(magickAttack: attack, randomNumber: randomNumber)
        choseSkillName = "テールアタック"
        return Double(damege)
        }
    
    
}

