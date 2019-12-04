//
//  Battle.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Battle { //戦闘を管理するクラス
    
    private var player : Player
    private var enemy : Enemy
    let skill = Skill()
    
    private var logList : String = "" //ログのリスト
    
    init(enemyName : String ) {
        
        let playerStatas : [Int] = [200 , 10 , 100 , 200 , 50]//仮のステータス　後々ステータスクラスから引っ張る予定
        self.player = Player(maxHitPoint: playerStatas[0], defense: playerStatas[1], attack: playerStatas[2], magickAttack: playerStatas[3], maxMagicPoint: playerStatas[4])
        
        switch enemyName {
        case "doragon" :
            self.enemy = Doragon()
            break
            
        case "slime" :
            self.enemy = Slime()
            break
            
        default:
            self.enemy = Slime()
            break
        }
        
    }
    
    func battle(tuchBottunName : String ) {
        
        var damege : Int
        
        switch tuchBottunName {
        case "attack":
            //プレイヤー
            damege = skill.nomalAttack(attack: player.attack)
            damege = player.damageCalculate(skillDamage: damege, enemyDefence: enemy.getDefense())
            
            logList = logList + "\nプレイヤーは" + String(damege) + "のダメージを与えた"
            
            //エネミー
            damege = enemy.selectSkill()
            damege = enemy.damageCalculate(skillDamage: damege, enemyDefence: player.defense)
            
            logList = logList + "\n" + enemy.getName() + "は" + String(damege) + "のダメージを与えた"
            
            print(logList)
            break
            
        default:
            logList = logList + "\nerror"
            break
        }
        
    }
    
    func getLogList() -> String {
        return logList
    }
    
    
}
