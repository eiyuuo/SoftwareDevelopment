//
//  Skill.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Skill {
    let skillPointDict:[String:Int] =
        ["通常攻撃" : 0 ,
         "渾身の一撃" : 5 ,
         "スラント" : 5 ,
         "クロー" : 5 ,
         "テールアタック" : 5 ,
         "噛みつく" : 5 ,
         "体当たり" : 5 ,
         "エアスラッシュ" : 13 ,
         "クロスブレイブ" : 13 ,
         "アッパーブレイド" : 13 ,
         "ドライブフェンサー" : 13 ,
         "アークバイト" : 13 ,
         "アストラルクロス" : 25 ,
         "ツヴァイセイバー" : 25,
         "シャインセイバー" : 25 ,
         "ドラグテイル" : 25 ,
         "リヴァイクロー" : 30 ,
         "ファイア" : 5 ,
         "ウィンド" : 5 ,
         "アイス" : 5 ,
         "ストーン" : 5 ,
         "ショット" : 5 ,
         "ファイアアロウ" : 20 ,
         "ウィンドカッター" : 20 ,
         "アイスランス" : 20 ,
         "ストーンエッジ" : 20 ,
         "イフリート" : 50 ,
         "テンペスト" : 50 ,
         "ブリザード" : 50 ,
         "アースクエイク" : 50 ,
         "ナイトメア" : 60 ,
         "ヒール" : 5 ,
         "ハイヒール" : 20 ,
         "グレイヒール" : 50]
    
    let skillHitPersent : [String : Int] =
        ["通常攻撃" : 100 ,
        "渾身の一撃" : 95 ,
        "スラント" : 95 ,
        "クロー" : 95 ,
        "テールアタック" : 95 ,
        "噛みつく" : 95 ,
        "体当たり" : 100 ,
        "エアスラッシュ" : 80 ,
        "クロスブレイブ" : 80 ,
        "アッパーブレイド" : 80 ,
        "ドライブフェンサー" : 80 ,
        "アークバイト" : 80 ,
        "アストラルクロス" : 70 ,
        "ツヴァイセイバー" : 65,
        "シャインセイバー" : 70 ,
        "ドラグテイル" : 70,
        "リヴァイクロー" : 70 ,
        "ファイア" : 100 ,
        "ウィンド" : 95 ,
        "アイス" : 95 ,
        "ストーン" : 90 ,
        "ショット" : 90 ,
        "ファイアアロウ" : 90 ,
        "ウィンドカッター" : 80 ,
        "アイスランス" : 75 ,
        "ストーンエッジ" : 90 ,
        "イフリート" : 60 ,
        "テンペスト" : 70 ,
        "ブリザード" : 65 ,
        "アースクエイク" : 70 ,
        "ナイトメア" : 70 ,
        "ヒール" : 100,
        "ハイヒール" : 100,
        "グレイヒール" : 100]
        
    
    func choseSkill(skillName : String, attack : Int, magickAttack : Int) -> Double {
        let randomNumber = Int.random(in: 1 ... 100)
        
        print(skillName)
        
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
            
        case "エアスラッシュ":
            return airSlash(attack: attack, randomNumber: randomNumber)
            
        case "クロスブレイブ":
            return crossBrave(attack: attack, randomNumber: randomNumber)
            
        case "アッパーブレイド":
            return upperBlade(attack: attack, randomNumber: randomNumber)
            
        case "ドライブフェンサー":
            return upperBlade(attack: attack, randomNumber: randomNumber)
        
        case "アークバイト":
            return upperBlade(attack: attack, randomNumber: randomNumber)
            
        case "アストラルクロス":
            return upperBlade(attack: attack, randomNumber: randomNumber)
            
        case "ツヴァイセイバー":
            return upperBlade(attack: attack, randomNumber: randomNumber)
            
        case "シャインセイバー":
            return upperBlade(attack: attack, randomNumber: randomNumber)
        
        case "ドラグテイル":
            return dragTail(attack: attack, randomNumber: randomNumber)
        
        case "リヴァイクロー":
            return leviClaw(attack: attack, randomNumber: randomNumber)
            
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
        
        case "ファイアアロウ":
            return fireArrow(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "ウィンドカッター":
            return windCutter(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "アイスランス":
            return iceLance(magickAttack: magickAttack,randomNumber : randomNumber)
        
        case "ストーンエッジ":
            return stoneEdge(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "イフリート":
            return ifrit(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "テンペスト":
            return tempest(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "ブリザード":
            return blizzard(magickAttack: magickAttack,randomNumber : randomNumber)
            
        case "アースクエイク" :
            return earthquake(magickAttack: magickAttack, randomNumber: randomNumber)
            
        case "ナイトメア":
            return nightmare(magickAttack: magickAttack,randomNumber : randomNumber)
            
//ここから回復スキル
        case "ヒール":
            return heel(magickAttack : magickAttack)
            
        case "ハイヒール":
            return highHeel(magickAttack : magickAttack)
            
        case "グレイヒール":
            return greatHeel(magickAttack : magickAttack)
            
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
    
    func airSlash(attack : Int,randomNumber : Int) -> Double {
        if (80 - randomNumber > 0){
            return Double(attack) * 3
        }else {
            return 0
        }
    }
    
    func crossBrave(attack : Int,randomNumber : Int) -> Double {
        if (80 - randomNumber > 0){
            return Double(attack) * 3.4
        }else {
            return 0
        }
    }
    
    func upperBlade(attack : Int,randomNumber : Int) -> Double {
        if (80 - randomNumber > 0){
            return Double(attack) * 3
        }else {
            return 0
        }
    }
    
    func Drivefencer(attack : Int,randomNumber : Int) -> Double {
        if (80 - randomNumber > 0){
            return Double(attack) * 3.4
        }else {
            return 0
        }
    }
    
    func arkBite(attack : Int,randomNumber : Int) -> Double {
        if (80 - randomNumber > 0){
            return Double(attack) * 3
        }else {
            return 0
        }
    }
    
    func astralCross(attack : Int,randomNumber : Int) -> Double {
        if (70 - randomNumber > 0){
            return Double(attack) * 5
        }else {
            return 0
        }
    }
    
    func zweiSaber(attack : Int,randomNumber : Int) -> Double {
        if (65 - randomNumber > 0){
    return Double(attack) * 5.5
        }else {
            return 0
        }
    }
    
    func shineSaber(attack : Int,randomNumber : Int) -> Double {
        if (70 - randomNumber > 0){
    return Double(attack) * 5.2
        }else {
            return 0
        }
    }
    
    func dragTail(attack : Int,randomNumber : Int) -> Double {
        if (70 - randomNumber > 0){
    return Double(attack) * 5
        }else {
            return 0
        }
    }
    
    func leviClaw(attack : Int,randomNumber : Int) -> Double {
        if (60 - randomNumber > 0){
    return Double(attack) * 6
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
    
    func fireArrow(magickAttack : Int, randomNumber : Int) -> Double {
        if (90 - randomNumber > 0){
            return Double(magickAttack) * 4.2
        }else {
            return 0
        }
    }
    
    func windCutter(magickAttack : Int, randomNumber : Int) -> Double {
        if (80 - randomNumber > 0){
            return Double(magickAttack) * 4
        }else {
            return 0
        }
    }
    
    func iceLance(magickAttack : Int, randomNumber : Int) -> Double {
        if (75 - randomNumber > 0){
            return Double(magickAttack) * 4.4
        }else {
            return 0
        }
    }
    
    func stoneEdge(magickAttack : Int, randomNumber : Int) -> Double {
        if (90 - randomNumber > 0){
            return Double(magickAttack) * 4
        }else {
            return 0
        }
    }
    
    func ifrit(magickAttack : Int, randomNumber : Int) -> Double {
        if (60 - randomNumber > 0){
            return Double(magickAttack) * 8.5
        }else {
            return 0
        }
    }
    
    func tempest(magickAttack : Int, randomNumber : Int) -> Double {
        if (70 - randomNumber > 0){
            return Double(magickAttack) * 8
        }else {
            return 0
        }
    }
    
    func blizzard(magickAttack : Int, randomNumber : Int) -> Double {
        if (65 - randomNumber > 0){
            return Double(magickAttack) * 8.4
        }else {
            return 0
        }
    }
    
    func earthquake(magickAttack : Int, randomNumber : Int) -> Double {
        if (70 - randomNumber > 0){
            return Double(magickAttack) * 8.2
        }else {
            return 0
        }
    }
    
    func nightmare(magickAttack : Int, randomNumber : Int) -> Double {
        if (70 - randomNumber > 0){
            return Double(magickAttack) * 9
        }else {
            return 0
        }
    }

//回復系スキル
    func heel(magickAttack : Int) -> Double {
        return Double(magickAttack + 10)
    }
    
    func highHeel(magickAttack : Int) -> Double {
        return Double(2 * magickAttack + 100)
    }
    
    func greatHeel(magickAttack : Int) -> Double {
        return Double(3 * magickAttack + 300)
    }
    
    //ゲッター
    func getSkillPoint(keyName : String) -> Int {
        return skillPointDict[keyName]!
    }

    func getSkillPointDict() -> [String:Int] {
        return skillPointDict
    }
    
    func getSkillHitPersent() -> [String : Int] {
        return skillHitPersent
    }
    
}
