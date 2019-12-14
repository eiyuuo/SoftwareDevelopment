//
//  StatusAdd.swift
//  SeaHours
//
//  Created by 真栄城魁人 on 2019/12/05.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

//ステータスに能力を振るクラス
class StatusAdd {
    
    let status = Status()
    
    //EXP-1の時のステータス割り振りおよび保存
    func AddHP(){
        status.HP += 2
        print(status.HP)
    }
    
    func AddMP(){
        status.MP += 1
        status.setMP(point :status.MP)
    }
    
    func AddATK(){
        status.ATK += 1
        status.setATK(point :status.ATK)
    }
    
    func AddDEF(){
        status.DEF += 1
        status.setDEF(point :status.DEF)
    }
    
    func AddINT(){
        status.INT += 1
        status.setINT(point :status.INT)
    }
    
    func MinusEXP(){
        status.EXP -= 1
        status.setEXP(point :status.EXP)
        print(status.getEXP())
    }
    
    
    
    //EXP-10の時のステータス割り振りおよび保存
    func AddTenHP(){
        status.HP += 20
        status.setHP(point :status.HP)
    }
    
    func AddTenMP(){
        status.MP += 10
        status.setMP(point :status.MP)
    }
    
    func AddTenATK(){
        status.ATK += 10
        status.setATK(point :status.ATK)
    }
    
    func AddTenDEF(){
        status.DEF += 10
        status.setDEF(point :status.DEF)
    }
    
    func AddTenINT(){
        status.INT += 10
        status.setINT(point :status.INT)
    }
    
    func MinusTenEXP(){
        status.EXP -= 10
        status.setEXP(point :status.EXP)
    }
    
    
    
    //変更したステータスの値を保存
    func SaveStatus(){
        status.setHP(point :status.HP)
        status.setMP(point :status.MP)
        status.setATK(point :status.ATK)
        status.setDEF(point :status.DEF)
        status.setINT(point :status.INT)
        status.setEXP(point :status.EXP)
    }
    
    
    
    //装備によるステータスの増加処理
    func Equipment(){
        //実装予定
    }
    
}

