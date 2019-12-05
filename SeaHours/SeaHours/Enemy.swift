//
//  Enemy.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/02.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Enemy : Character {
        
    func selectSkill() -> Int {
        //スキルを自動で選ぶ。例）HP50％を切ったら別のスキルなど？
        //今は仮の実装なので，2分の1で選ぶ
        
        var damege :Int
        
        let randomBool = Bool.random()
        if (randomBool){
            damege = self.skill.nomalAttack(attack: self.attack)
            return damege
        }else{
            damege = self.skill.nomalMagickAttack(magickAttack: self.magickAttack)
            return damege
        }
    }
    
    func getName() -> String {
        return name
    }

}

