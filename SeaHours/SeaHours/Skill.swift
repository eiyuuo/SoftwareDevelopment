//
//  Skill.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Skill {
    var hitPercentageList: [Int] = [95,80]
    
    func nomalAttack(attack : Int) -> Int {
        //命中率のパーセントをif文で書き，当たったらアタックの何倍？など適当に計算。外したら0を返す。
        let a = Int.random(in: 0 ... 100)
        if (hitPercentageList[0] - a < 0){
            print(attack)
            return attack
        }else {
            print(0)
            return 0
        }
    }

    func nomalMagickAttack(magickAttack : Int) -> Int {
        //命中率のパーセントをif文で書き，当たったら魔法アタックの何倍？など適当に計算。外したら0を返す。
        let a = Int.random(in: 0 ... 100)
        if (hitPercentageList[0] - a < 0){
            print(magickAttack)
            return magickAttack
        }else {
            print(0)
            return 0
        }
    }

}
