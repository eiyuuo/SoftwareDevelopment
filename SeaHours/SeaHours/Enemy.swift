//
//  Enemy.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/02.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Enemy : Character {
    private var skill = Skill()
        
    func selectSkill() -> Int {
        //スキルを自動で選ぶ。例）HP50％を切ったら別のスキルなど？
        //今は仮の実装なので，2分の1で選ぶ
        
        var damege :Int
        
        let randomBool = Bool.random()
        if (randomBool){
            damege = skill.nomalAttack(attack: self.attack)
            print(damege)
            return damege
        }else{
            damege = skill.nomalMagickAttack(magickAttack: self.magickAttack)
            print(damege)
            return damege
        }
    }
    
    func getName() -> String {
        return name
    }

}

