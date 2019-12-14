//
//  Battle.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Battle { //戦闘を管理するクラス
    
    var player : Player
    var enemy : Enemy
    
    private var logList : String = ""  //ログのリスト
    
    init(enemyName : String ) {
        
        let playerStatas : [Int] = [20 , 10 , 10 , 5000 , 50]//仮のステータス　後々ステータスクラスから引っ張る予定
        self.player = Player(maxHitPoint: playerStatas[0], defense: playerStatas[1], attack: playerStatas[2], magickAttack: playerStatas[3], maxMagicPoint: playerStatas[4])
        
        switch enemyName { //どの敵なのか？
            
        case "dragon" :
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
    
    func battle(tuchButtonName : String ) {
        
        var log : String = ""

        //プレイヤー
        if (!player.getIsDead()) {
            log = player.skill_(enemy: enemy ,skillName: tuchButtonName)
            logList = log  + logList
            if (enemy.getIsDead()) {
              logList = "\n" + enemy.getName() + "は倒れた" + logList
            }
        }
        
        //エネミー
        if (!enemy.getIsDead()){
            log = enemy.skill(player: player)
            logList = log + logList
            if (player.getIsDead()) {
              logList = "\nプレイヤーは力尽きた" + logList
            }
        }
        
    }
    
    func getLogList() -> String {
        return logList
    }
    
    
}
