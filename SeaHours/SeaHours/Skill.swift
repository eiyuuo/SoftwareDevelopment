//
//  Skill.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Skill {
    let magickSkillHitPercentageList : [Int] = [95,95,90,90,90]
    let attackSkillHitPercentageList : [Int] = [100,95,95,95,95,95,100] //仮仕様です。一番上のメソッドから順に命中率を入れていきます
    
    let skillLis : [String] = ["nomalAttack" , "nomalMagickAttack", "strongAttack", "strongMagickAttack"]
    
    
    func choseSkill(skillName : String, attack : Int, magickAttack : Int) -> Double {
        let randomNumber = Int.random(in: 0 ... 100)
        
        switch skillName {
            
//ここからアタック系スキル
        case "通常攻撃":
            return nomalAttack(attack: attack ,randomNumber: randomNumber)
            
        case "渾身の一撃":
            return strongAttack(attack: attack, randomNumber: randomNumber)
            
        case "スラント":
            return slant(attack: attack, randomNumber: randomNumber)
            
        case "クロー":
            return claw(attack: attack, randomNumber: randomNumber)
            
        case "テールアッタク":
            return tailAttack(attack: attack, randomNumber: randomNumber)
            
        case "噛みつく":
            return bite(attack: attack, randomNumber: randomNumber)
            
        case "体当たり":
            return bodyBlow(attack: attack, randomNumber: randomNumber)
            
//ここから魔法系スキル
        case "ファイア":
            return fire(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "ウィンド":
            return wind(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "アイス":
            return ice(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "ストーン":
            return stone(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "ショット":
            return shot(magickAttack: magickAttack,randomNumber : randomNumber)
            
//ここから回復スキル
        case "ヒール":
            return heel()
            
        case "ハイヒール":
            return highHeel()
            
        case "グレイヒール":
            return greatHeel()
            
        default:
            return 0
        }
    }
    
//攻撃依存スキル
    func nomalAttack(attack : Int,randomNumber : Int) -> Double {
        //命中率のパーセントをif文で書き，当たったらアタックの何倍？など適当に計算。外したら0を返す。
        if (attackSkillHitPercentageList[0] - randomNumber > 0){
            return Double(attack) * 1
        }else {
            return 0
        }
    }
    
    func strongAttack(attack : Int,randomNumber : Int) -> Double {
        if (attackSkillHitPercentageList[1] - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func slant(attack : Int,randomNumber : Int) -> Double {
        if (attackSkillHitPercentageList[2] - randomNumber > 0){
            return Double(attack) * 2.2
        }else {
            return 0
        }
    }
    
    func claw(attack : Int,randomNumber : Int) -> Double {
        if (attackSkillHitPercentageList[3] - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func tailAttack(attack : Int,randomNumber : Int) -> Double {
        if (attackSkillHitPercentageList[4] - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func bite(attack : Int,randomNumber : Int) -> Double {
        if (attackSkillHitPercentageList[5] - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func bodyBlow(attack : Int,randomNumber : Int) -> Double {
        if (attackSkillHitPercentageList[6] - randomNumber > 0){
            return Double(attack) * 1.8
        }else {
            return 0
        }
    }
    
    
//魔法依存スキル
    func fire(magickAttack : Int, randomNumber : Int) -> Double {
        //命中率のパーセントをif文で書き，当たったら魔法アタックの何倍？など適当に計算。外したら0を返す。
        if (magickSkillHitPercentageList[0] - randomNumber > 0){
            return Double(magickAttack) * 2
        }else {
            return 0
        }
    }
    
    func wind(magickAttack : Int, randomNumber : Int) -> Double {
        if (magickSkillHitPercentageList[1] - randomNumber > 0){
            return Double(magickAttack) * 2.2
        }else {
            return 0
        }
    }

    func ice(magickAttack : Int, randomNumber : Int) -> Double {
        if (magickSkillHitPercentageList[2] - randomNumber > 0){
            return Double(magickAttack) * 2.4
        }else {
            return 0
        }
    }
    
    func stone(magickAttack : Int, randomNumber : Int) -> Double {
        if (magickSkillHitPercentageList[3] - randomNumber > 0){
            return Double(magickAttack) * 2.2
        }else {
            return 0
        }
    }
    
    func shot(magickAttack : Int, randomNumber : Int) -> Double {
        if (magickSkillHitPercentageList[0] - randomNumber > 0){
            return Double(magickAttack) * 2.5
        }else {
            return 0
        }
    }
    
//回復系スキル
    func heel() -> Double {
        return 10
    }
    
    func highHeel() -> Double {
        return 100
    }
    
    func greatHeel() -> Double {
        return 300
    }

}
