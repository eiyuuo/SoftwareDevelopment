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
    
    init( maxHitPoint: Int, defense: Int, attack: Int, magickAttack: Int) {
        
        super.init(name: "エネミー", maxHitPoint: maxHitPoint, defense: defense, attack: attack, magickAttack: magickAttack)
    }
    
    func selectSkill() {
        //スキルを自動で選ぶ。例）50％をい切ったら別のスキルなど？
        //今は仮の実装なので，2分の1で選ぶ
        
        let randomBool = Bool.random()
        if (randomBool){
            print(skill.nomalAttack(attack: self.attack))
        }else{
            print(skill.nomalMagickAttack(magickAttack: self.magickAttack))
        }
    }

}

