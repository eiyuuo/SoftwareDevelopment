//
//  Skill.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Skill {
    let hitPercentageList: [Int] = [90,80] //仮仕様です。一番上のメソッドから順に命中率を入れていきます
    
    func nomalAttack(attack : Int) -> Int {
        //命中率のパーセントをif文で書き，当たったらアタックの何倍？など適当に計算。外したら0を返す。
        let randomNumber = Int.random(in: 0 ... 100)
        if (hitPercentageList[0] - randomNumber > 0){
            print("attack hit")
            return attack
        }else {
            print("attack not hit")
            return 0
        }
    }

    func nomalMagickAttack(magickAttack : Int) -> Int {
        //命中率のパーセントをif文で書き，当たったら魔法アタックの何倍？など適当に計算。外したら0を返す。
        let randomNumber = Int.random(in: 0 ... 100)
        if (hitPercentageList[1] - randomNumber > 0){
            print("magick hit")
            return magickAttack
        }else {
            print("magick not hit")
            return 0
        }
    }

}
