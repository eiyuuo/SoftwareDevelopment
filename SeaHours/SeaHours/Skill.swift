//
//  Skill.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Skill {
    
    private let skillPointDict:[String:Int] = ["通常攻撃" : 0 , "渾身の一撃" : 5 , "スラント" : 5 , "クロー" : 5 , "テールアタック" : 5 , "噛みつく" : 5 , "体当たり" : 5 , "エアスラッシュ" : 13 , "クロスブレイブ" : 13 , "アッパーブレイド" : 13 , "ドライブフェンサー" : 13 , "アークバイト" : 13 , "アストラルクロス" : 25 , "ツヴァイセイバー" : 25 , "シャインセイバー" : 25 , "ドラグテイル" : 25 , "リヴァイクロー" : 30 , "ファイア" : 5 , "ウィンド" : 5 , "アイス" : 5 , "ストーン" : 5 , "ショット" : 5 , "ファイアアロウ" : 20 , "ウィンドカッター" : 20 , "アイスランス" : 20 , "ストーンエッジ" : 20 , "イフリート" : 50 , "テンペスト" : 50 , "ブリザード" : 50 , "アースクエイク" : 50 , "ナイトメア" : 60 , "ヒール" : 5 , "ハイヒール" : 20 , "グレイヒール" : 50 ]
    
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
        if (100 - randomNumber > 0){
            return Double(attack) * 1
        }else {
            return 0
        }
    }
    
    func strongAttack(attack : Int,randomNumber : Int) -> Double {
        if (95 - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func slant(attack : Int,randomNumber : Int) -> Double {
        if (95 - randomNumber > 0){
            return Double(attack) * 2.2
        }else {
            return 0
        }
    }
    
    func claw(attack : Int,randomNumber : Int) -> Double {
        if (95 - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func tailAttack(attack : Int,randomNumber : Int) -> Double {
        if (95 - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func bite(attack : Int,randomNumber : Int) -> Double {
        if (95 - randomNumber > 0){
            return Double(attack) * 2
        }else {
            return 0
        }
    }
    
    func bodyBlow(attack : Int,randomNumber : Int) -> Double {
        if (100 - randomNumber > 0){
            return Double(attack) * 1.8
        }else {
            return 0
        }
    }
    
    
//魔法依存スキル
    func fire(magickAttack : Int, randomNumber : Int) -> Double {
        //命中率のパーセントをif文で書き，当たったら魔法アタックの何倍？など適当に計算。外したら0を返す。
        if (95 - randomNumber > 0){
            return Double(magickAttack) * 2
        }else {
            return 0
        }
    }
    
    func wind(magickAttack : Int, randomNumber : Int) -> Double {
        if (95 - randomNumber > 0){
            return Double(magickAttack) * 2.2
        }else {
            return 0
        }
    }

    func ice(magickAttack : Int, randomNumber : Int) -> Double {
        if (90 - randomNumber > 0){
            return Double(magickAttack) * 2.4
        }else {
            return 0
        }
    }
    
    func stone(magickAttack : Int, randomNumber : Int) -> Double {
        if (90 - randomNumber > 0){
            return Double(magickAttack) * 2.2
        }else {
            return 0
        }
    }
    
    func shot(magickAttack : Int, randomNumber : Int) -> Double {
        if (90 - randomNumber > 0){
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
        return 10000
    }
    
    //ゲッター
    func getSkillPoint(keyName : String) -> Int {
        print (skillPointDict[keyName]!)
        return skillPointDict[keyName]!
    }

    func getSkillPointDict() -> [String:Int] {
        return skillPointDict
    }
    
}
