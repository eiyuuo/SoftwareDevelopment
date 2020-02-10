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
    
    let userDefaults = UserDefaults.standard
    let status = Status()
    
    var hp:Int = UserDefaults.standard.integer(forKey: "HPs")
    var sp:Int = UserDefaults.standard.integer(forKey: "SPs")
    var atk:Int = UserDefaults.standard.integer(forKey: "ATKs")
    var def:Int = UserDefaults.standard.integer(forKey: "DEFs")
    var int:Int = UserDefaults.standard.integer(forKey: "INTs")
    var exp:Int = UserDefaults.standard.integer(forKey: "EXPs")
    
   
    
    //EXP-1の時のステータス割り振りおよび保存
    func AddHP(){
        hp += 2
    }
    
    func AddSP(){
        sp += 1
    }
    
    func AddATK(){
        atk += 1
    }
    
    func AddDEF(){
        def += 1
    }
    
    func AddINT(){
        int += 1
    }
    
    func MinusEXP(){
        exp -= 1
    }
    
    
    
    //EXP+1の時のステータス割り振りおよび保存
    func MinusHP(){
        hp -= 2
    }
    
    func MinusSP(){
        sp -= 1
    }
    
    func MinusATK(){
        atk -= 1
    }
    
    func MinusDEF(){
        def -= 1
    }
    
    func MinusINT(){
        int -= 1
    }
    
    func AddEXP(){
        exp += 1
    }
    
    
    
    //EXP-10の時のステータス割り振りおよび保存
    func AddTenHP(){
        hp += 20
    }
    
    func AddTenSP(){
        sp += 10
    }
    
    func AddTenATK(){
        atk += 10
    }
    
    func AddTenDEF(){
        def += 10
    }
    
    func AddTenINT(){
        int += 10
    }
    
    func MinusTenEXP(){
        exp -= 10
    }
    
    
    
    //EXP+10の時のステータス割り振りおよび保存
    func MinusTenHP(){
        hp -= 20
    }
    
    func MinusTenSP(){
        sp -= 10
    }
    
    func MinusTenATK(){
        atk -= 10
    }
    
    func MinusTenDEF(){
        def -= 10
    }
    
    func MinusTenINT(){
        int -= 10
    }
    
    func AddTenEXP(){
        exp += 10
    }
    
    
    
    //変更したステータスの値を保存
    func SaveStatus(){
        
        //使用している変数への保存
        status.setHP(point :hp)
        status.setSP(point :sp)
        status.setATK(point :atk)
        status.setDEF(point :def)
        status.setINT(point :int)
        status.setEXP(point :exp)
        
        
        
        //UserDefaultsへのデータ保存
        UserDefaults.standard.set(hp, forKey:"HPs")
        UserDefaults.standard.set(sp, forKey:"SPs")
        UserDefaults.standard.set(atk, forKey:"ATKs")
        UserDefaults.standard.set(def, forKey:"DEFs")
        UserDefaults.standard.set(int, forKey:"INTs")
        UserDefaults.standard.set(exp, forKey:"EXPs")
        
        
        //現在ステータスの確認用出力
            print("HP:\(status.getHP())")
            print("SP:\(status.getSP())")
            print("ATK:\(status.getATK())")
            print("DEF:\(status.getDEF())")
            print("INT:\(status.getINT())")
            print("EXP:\(status.getEXP())")
        
        }
    
    
    
    //装備によるステータスの増加処理
    func Equipment(){
        //実装予定
    }
    
}

