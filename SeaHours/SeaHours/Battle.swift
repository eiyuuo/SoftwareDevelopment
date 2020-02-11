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
 
        //データベースからの修正済み

        self.player = Player(maxHitPoint:status.getHP()+20000, defense:status.getDEF()+300, attack: status.getATK()+300, magickAttack:status.getINT()+300, maxSkillPoint:status.getSP()+300, exp: status.getEXP())


        
        switch enemyName { //どの敵なのか？
            
        case "doragon" :
            self.enemy = Doragon()
            break
            
        case "slime" :
            self.enemy = Slime()
            break
            
        case "magickFish" :
            self.enemy = MagicFish()
            break
        /*
        case "seaUsagi" :
            self.enemy = SeaUsagi()
            break
             
        case "kaihei" :
             self.enemy = Kaihei()
             break
        */
            
        default:
            self.enemy = Slime()
            break
        }

    }
    
    func battlePlayerTurn(nowChose : String, tuchButtonName : String) {
        var log : String = ""
        print(nowChose)
        if (!player.getIsDead()) {
            if (nowChose == "skill") //スキル処理
            {
                log = player.skill_(enemy: enemy ,skillName: tuchButtonName)
                logList = log  + logList
                if (enemy.getIsDead()) {
                  logList = "\n" + enemy.getName() + "は倒れた" + logList
                }
            }else if (nowChose == "item") //アイテム処理
            {
                log = player.item_(itemNumber: tuchButtonName)
                logList = log  + logList
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
