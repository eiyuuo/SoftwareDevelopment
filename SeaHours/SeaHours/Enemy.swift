//
//  Enemy.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/02.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Enemy : Character {
        
    func selectSkill() -> Double {
        //スキルを自動で選ぶ。例）HP50％を切ったら別のスキルなど？
        //今は仮の実装なので，2分の1で選ぶ
        
        var damege :Double
        
        let randomBool = Bool.random()
        let randomNumber = Int.random(in: 1 ... 100)
        if (randomBool){
            damege = self.skill.nomalAttack(attack: attack, randomNumber: randomNumber)
            return Double(damege)
        }else{
            damege = self.skill.fire(magickAttack: magickAttack, randomNumber: randomNumber)
            return Double(damege)
        }
    }
    
    func skill(player : Player) -> String {
        var damage : Int
        
        damage = damageCalculate(skillDamage: selectSkill(), enemyDefence: player.defense)
        
        player.hitPointOpelate(changePoint: -damage)
        player.deadJudgment()
        
        return "\n" + getName() + "はプレイヤーに" + String(damage) + "のダメージを与えた"
    }
    
    func getName() -> String {
        return name
    }

}

