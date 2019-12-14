//
//  Skill.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Skill {
    let hitPercentageList: [Int] = [90,80,80,50] //仮仕様です。一番上のメソッドから順に命中率を入れていきます
    
    
    let skillLis : [String] = ["nomalAttack" , "nomalMagickAttack", "strongAttack", "strongMagickAttack"]
    
    
    func choseSkill(skillName : String, attack : Int, magickAttack : Int) -> Int {
        let randomNumber = Int.random(in: 0 ... 100)
        
        switch skillName {
        case skillLis[0]:
            return nomalAttack(attack: attack ,randomNumber: randomNumber)
            
        case skillLis[1]:
            return nomalMagickAttack(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case skillLis[2]:
            return 2*(nomalAttack(attack: attack,randomNumber: randomNumber))
            
        case skillLis[3]:
            return 2*(nomalMagickAttack(magickAttack: magickAttack,randomNumber : randomNumber))
            
        default:
            return 0
        }
    }
    
    func nomalAttack(attack : Int,randomNumber : Int) -> Int {
        //命中率のパーセントをif文で書き，当たったらアタックの何倍？など適当に計算。外したら0を返す。
        if (hitPercentageList[0] - randomNumber > 0){
            return attack
        }else {
            return 0
        }
    }
    
    func nomalMagickAttack(magickAttack : Int, randomNumber : Int) -> Int {
        //命中率のパーセントをif文で書き，当たったら魔法アタックの何倍？など適当に計算。外したら0を返す。
        if (hitPercentageList[1] - randomNumber > 0){
            return magickAttack
        }else {
            return 0
        }
    }

}
