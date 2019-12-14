//
//  Player.swift
//  SeaHours
//
//  Created by Tomoya Gibo on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Player : Character {
    private var maxSkillPoint: Int
    private var nowSkillPoint: Int
    private var item: [String] = [String]()
    
    init( maxHitPoint: Int, defense: Int, attack: Int, magickAttack: Int, maxSkillPoint: Int ) {
        self.maxSkillPoint = maxSkillPoint
        self.nowSkillPoint = self.maxSkillPoint
        
        super.init(name: "プレイヤー", maxHitPoint: maxHitPoint, defense: defense, attack: attack, magickAttack: magickAttack)
    }
    
    func skill_(enemy:Enemy ,skillName :String) -> String {
           var damage : Int
        damage = damageCalculate(skillDamage: skill.choseSkill(skillName: skillName, attack: attack, magickAttack: magickAttack), enemyDefence: enemy.getDefense())
        
        enemy.hitPointOpelate(changePoint: -damage)
        enemy.deadJudgment()
           
           return "\nプレイヤーは" +  skillName + "で" + enemy.getName() + "に" + String(damage) + "のダメージを与えた\n"
       }

    
    func getSkillPoint() -> Int {
        return nowSkillPoint
    }
    
    func skillPointOplate(changePoint : Int){
        nowSkillPoint = nowSkillPoint + changePoint
        if (nowSkillPoint >= maxSkillPoint){
            nowSkillPoint = maxSkillPoint
        }
    }
    
}
