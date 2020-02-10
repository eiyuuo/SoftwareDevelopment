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
    
    let status = Status()
    
    var hp:Int!
    var sp:Int!
    var atk:Int!
    var def:Int!
    var int:Int!
    var exp:Int!
    
    private var logList : String = ""  //ログのリスト
    
    init(enemyName : String ) {
        self.hp = status.getHP()
        self.sp = status.getSP()
        self.atk = status.getATK()
        self.def = status.getDEF()
        self.int = status.getINT()
        self.exp = status.getEXP()
        
        let playerStatas : [Int] = [hp , sp , atk , def , int]//仮のステータス　後々ステータスクラスから引っ張る予定
        self.player = Player(maxHitPoint: playerStatas[0], defense: playerStatas[1], attack: playerStatas[2], magickAttack: playerStatas[3], maxSkillPoint: playerStatas[4])
        
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
    
    func battlePlayerTurn(tuchButtonName : String) {
        var log : String = ""
        //プレイヤー
        if (!player.getIsDead()) {
            log = player.skill_(enemy: enemy ,skillName: tuchButtonName)
            logList = log  + logList
            if (enemy.getIsDead()) {
              logList = "\n" + enemy.getName() + "は倒れた" + logList
            }
        }
    }
    
    func battleEnemyTurn() {
        var log : String = ""
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
