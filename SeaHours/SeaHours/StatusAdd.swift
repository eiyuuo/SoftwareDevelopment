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
    let userDefaults = UserDefaults.standard
    
    var hp:Int = UserDefaults.standard.integer(forKey: "HPs")
    var sp:Int = UserDefaults.standard.integer(forKey: "SPs")
    var atk:Int = UserDefaults.standard.integer(forKey: "ATKs")
    var def:Int = UserDefaults.standard.integer(forKey: "DEFs")
    var int:Int = UserDefaults.standard.integer(forKey: "INTs")
    var exp:Int = UserDefaults.standard.integer(forKey: "EXPs")
    
    
    //EXP-1の時のステータス割り振りおよび保存
    func AddHP(){
        self.hp += 2
    }

    func AddSP(){
        self.sp += 1
    }
    
    func AddATK(){
        self.atk += 1
    }
    
    func AddDEF(){
        self.def += 1
    }
    
    func AddINT(){
        self.int += 1
    }
    
    func MinusEXP(){
        self.exp -= 1
    }
    
    
    
    //EXP+1の時のステータス割り振りおよび保存
    func MinusHP(){
        self.hp -= 2
    }
    
    func MinusSP(){
        self.sp -= 1
    }
    
    func MinusATK(){
        self.atk -= 1
    }
    
    func MinusDEF(){
        self.def -= 1
    }
    
    func MinusINT(){
        self.int -= 1
    }
    
    func AddEXP(){
        self.exp += 1
    }
    
    
    
    //EXP-10の時のステータス割り振りおよび保存
    func AddTenHP(){
        self.hp += 20
    }
    
    func AddTenSP(){
        self.sp += 10
    }
    
    func AddTenATK(){
        self.atk += 10
    }
    
    func AddTenDEF(){
        self.def += 10
    }
    
    func AddTenINT(){
        self.int += 10
    }
    
    func MinusTenEXP(){
        self.exp -= 10
    }
    
    
    
    //EXP+10の時のステータス割り振りおよび保存
    func MinusTenHP(){
        self.hp -= 20
    }
    
    func MinusTenSP(){
        self.sp -= 10
    }
    
    func MinusTenATK(){
        self.atk -= 10
    }
    
    func MinusTenDEF(){
        self.def -= 10
    }
    
    func MinusTenINT(){
        self.int -= 10
    }
    
    func AddTenEXP(){
        self.exp += 10
    }
    
    
    
    //変更したステータスの値を保存
    func SaveStatus(){
        //使用している変数への保存
        
        status.setHP(point :self.hp)
        status.setSP(point :self.sp)
        status.setATK(point :self.atk)
        status.setDEF(point :self.def)
        status.setINT(point :self.int)
        status.setEXP(point :self.exp)
        
        
        
        //UserDefaultsへのデータ保存
        UserDefaults.standard.set(self.hp, forKey:"HPs")
        UserDefaults.standard.set(self.sp, forKey:"SPs")
        UserDefaults.standard.set(self.atk, forKey:"ATKs")
        UserDefaults.standard.set(self.def, forKey:"DEFs")
        UserDefaults.standard.set(self.int, forKey:"INTs")
        UserDefaults.standard.set(self.exp, forKey:"EXPs")
        
        
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

