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
        
        let playerStatas : [Int] = [200 , 10 , 100 , 20000 , 50]//仮のステータス　後々ステータスクラスから引っ張る予定
        self.player = Player(maxHitPoint: playerStatas[0], defense: playerStatas[1], attack: playerStatas[2], magickAttack: playerStatas[3], maxMagicPoint: playerStatas[4])
        
        switch enemyName {
            
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
        
        var log : String
        
        switch tuchButtonName {
        case "attack":
            //プレイヤー
            log = player.attack(enemy: enemy)
            logList = log  + logList
            
            //エネミー
            log = enemy.skill(player: player)
            logList = log + logList
            break
            
        case "magick":
            //プレイヤー
            log = player.magick(enemy: enemy)
            logList = log  + logList
            
            //エネミー
            log = enemy.skill(player: player)
            logList = log + logList
            break
            
        default:
            break
        }
        
    }
    
    func getLogList() -> String {
        return logList
    }
    
    
}
