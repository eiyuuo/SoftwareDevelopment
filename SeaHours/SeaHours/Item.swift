//
//  Item.swift
//  tableview
//
//  Created by 榮門　祐斗 on 2019/12/16.
//  Copyright © 2019 yuto. All rights reserved.
//

import Foundation
import UIKit
class Item {
    let userDefaults = UserDefaults.standard
    init() {
        //UserDefaults.standard初期値
        userDefaults.register(defaults: ["itemname": ["non","non","non","non","non","non","non","non"],"itemhave": [0,0,0,0,0,0,0,0],"itemprice": [0,0,0,0,0,0,0,0],"bukiname":
            ["non","non","non","non","non","non","non","non"],"bukihave": [0,0,0,0,0,0,0,0],"bukiprice": [0,0,0,0,0,0,0,0],"bukinumber1": 0,"bukinumber2": 0,
                                                              "bouguname": ["non","non","non","non","non","non","non","non"],"bouguhave": [0,0,0,0,0,0,0,0],"bouguprice": [0,0,0,0,0,0,0,0],"bougunumber1": 0,"bougunumber2": 0])
    }
    
    var itemname2:[String:Int] = ["薬草":0, "ポーション":1,"ハイポーション":2,"グレイトポーション":3,"魔力草":4,"魔力ポーション":5,"魔力ハイポーション":6,"魔力グレイトポーション":7]

    var itemname:[Int:String] = [0:"薬草", 1:"ポーション",2:"ハイポーション",3:"グレイトポーション",4:"魔力草",5:"魔力ポーション",6:"魔力ハイポーション",7:"魔力グレイトポーション"]
   
    var itemnumber:[Int:Int] = [0:10,1:25,2:50,3:100,4:10,5:25,6:50,7:100]
    
    var itemprice:[Int:Int] =  [0:1,1:2,2:3,3:5,4:1,5:2,6:3,7:5]
    
    var itemdescription:[Int:String] = [0:"体力を回復する草。HPを10回復する。",1:"薬草を加工した飲み薬。HPを25回復する。",2:"ポーションを特殊な方法で加工し効果を上昇させた飲み薬。HPを50回復する。",3:"様々な方法で効果を上昇させた最高級の飲み薬。HPを100回復する。",4:"魔力が回復する薬草。SPを10回復する。",5:"魔力草を加工した飲み薬。SPを25回復する。",6:"魔力ポーションを特殊な方法で加工し効果を上昇させた飲み薬。SPを50回復する。",7:"様々な方法で効果を上昇させた最高級の飲み薬。SPを100回復する。"]
    
    var itemhave:[Int:Int] = [0:10,1:2,2:3,3:0,4:0,5:0,6:0,7:0]
    
    var bukiname:[Int:String] = [0:"木の剣", 1:"アイアンソード",2:"マジックロッド",3:"クレイモア",4:"ソーラーロッド",5:"シーブレード",6:"シーロッド",7:"サイレントソード"]
    
    var bukinumber:[Int:Int] = [0:1,1:8,2:8,3:13,4:15,5:25,6:25,7:50]
     
    var bukiprice:[Int:Int] =  [0:1,1:5,2:5,3:10,4:10,5:20,6:20,7:40]
     
    var bukidescription:[Int:String] = [0:"ただの木の剣。初期装備",1:"鉄の剣。攻撃力が8上昇する。",2:"魔法の杖。魔法攻撃力が8上昇する。",3:"大きな大剣。攻撃力が13上昇する。",4:"太陽の力を宿した杖。魔法攻撃力が15上昇する。",5:"海の力を宿した剣。攻撃力が25上昇する。",6:"海の力を宿した杖。魔法攻撃力が25上昇する。",7:"沈黙の力を宿した剣。攻撃力が50上昇する。"]
     
    var bukihave:[Int:Int] = [0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0]
    
    var bouguname:[Int:String] = [0:"皮の鎧", 1:"チェーンアーマー",2:"ハンターコート",3:"コートオブミッドナイト",4:"ダイタルアーマー",5:"ウィガール",6:"黒金の鎧",7:"ドラックラビオン"]
    
    var bougunumber:[Int:Int] = [0:8,1:13,2:25,3:38,4:53,5:60,6:100,7:120]
     
    var bouguprice:[Int:Int] =  [0:1,1:5,2:10,3:20,4:30,5:45,6:60,7:80]
     
    var bougudescription:[Int:String] = [0:"皮の鎧。初期装備",1:"鎖の鎧。攻撃力が8上昇する。",2:"狩人が身につけるコート。魔法攻撃力が8上昇する。",3:"黒いコート(キ◯ト、SA◯)。攻撃力が13上昇する。",4:"海の力を纏う鎧。魔法攻撃力が15上昇する。",5:"アーサー王がつけてたとか。攻撃力が25上昇する。",6:"不思議な素材の鎧。魔法攻撃力が25上昇する。",7:"ドラゴンの素材から作られた鎧。攻撃力が50上昇する。"]
     
    var bouguhave:[Int:Int] = [0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0]
    
    func GetItemName(ID:Int) -> String {
        return itemname[ID, default: "無"]
    }
    
    func GetItemNumber(ID:Int) -> Int {
        return itemnumber[ID, default: 0]
    }
    
    func GetItemPrice(ID:Int) -> Int {
        return itemprice[ID, default: 0]
    }
    
    func GetItemDescription(ID:Int) -> String {
        return itemdescription[ID, default: "無"]
    }
    
    func GetItemHave(ID:Int) -> Int {
        return itemhave[ID, default: 0]
    }
    
    func GetBukiName(ID:Int) -> String {
        return bukiname[ID, default: "無"]
    }
    
    func GetBukiNumber(ID:Int) -> Int {
        return bukinumber[ID, default: 0]
    }
    
    func GetBukiPrice(ID:Int) -> Int {
        return bukiprice[ID, default: 0]
    }
    
    func GetBukiDescription(ID:Int) -> String {
        return bukidescription[ID, default: "無"]
    }
    
    func GetBukiHave(ID:Int) -> Int {
        return bukihave[ID, default: 0]
    }
    
    func GetBouguName(ID:Int) -> String {
        return bukiname[ID, default: "無"]
    }
    
    func GetBouguNumber(ID:Int) -> Int {
        return bukinumber[ID, default: 0]
    }
    
    func GetBouguPrice(ID:Int) -> Int {
        return bukiprice[ID, default: 0]
    }
    
    func GetBouguDescription(ID:Int) -> String {
        return bukidescription[ID, default: "無"]
    }
    
    func GetBouguHave(ID:Int) -> Int {
        return bukihave[ID, default: 0]
    }
    
    func MakeStringArray(dicname:String) -> [String] {
        
        var StringArray:[String] = []
        
        switch dicname {
        case "itemname":
            for i in 0..<8 {
                StringArray.append(itemname[i]!)
                UserDefaults.standard.set(StringArray, forKey: "itemname")
            }

        case "itemdescription":
            for i in 0..<8 {
                StringArray.append(itemdescription[i]!)
                UserDefaults.standard.set(StringArray, forKey: "itemdescription")
            }
        case "bukiname":
            for i in 0..<8 {
                StringArray.append(bukiname[i]!)
                UserDefaults.standard.set(StringArray, forKey: "bukiname")
            }

        case "bukidescription":
            for i in 0..<8 {
                StringArray.append(bukidescription[i]!)
                UserDefaults.standard.set(StringArray, forKey: "bukidescription")
            }
        case "bouguname":
            for i in 0..<8 {
                StringArray.append(bouguname[i]!)
                UserDefaults.standard.set(StringArray, forKey: "bouguname")
            }

        case "bougudescription":
            for i in 0..<8 {
                StringArray.append(bougudescription[i]!)
                UserDefaults.standard.set(StringArray, forKey: "bouguname")
            }

        default:
            print("nodicname")
        }
        return StringArray
    }
    
    func MakeIntArray(dicname:String) -> [Int] {
        
        var IntArray:[Int] = []
        
        switch dicname {
        case "itemnumber":
            for i in 0..<8 {
                IntArray.append(itemnumber[i]!)
                UserDefaults.standard.set(IntArray, forKey: "itemnumber")
            }

        case "itemprice":
            for i in 0..<8 {
                IntArray.append(itemprice[i]!)
                UserDefaults.standard.set(IntArray, forKey: "itemprice")
            }
        case "itemhave":
            for i in 0..<8 {
                IntArray.append(itemhave[i]!)
                UserDefaults.standard.set(IntArray, forKey: "itemhave")
            }
        case "bukinumber":
            for i in 0..<8 {
                IntArray.append(bukinumber[i]!)
                UserDefaults.standard.set(IntArray, forKey: "bukinumber")
            }
            
        case "bukiprice":
            for i in 0..<8 {
                IntArray.append(bukiprice[i]!)
                UserDefaults.standard.set(IntArray, forKey: "bukiprice")
            }
        case "bukihave":
            for i in 0..<8 {
                IntArray.append(bukihave[i]!)
                UserDefaults.standard.set(IntArray, forKey: "bukihave")
            }
        case "bougunumber":
            for i in 0..<8 {
                IntArray.append(bougunumber[i]!)
                UserDefaults.standard.set(IntArray, forKey: "bougunumber")
            }
            
        case "bouguprice":
            for i in 0..<8 {
                IntArray.append(bouguprice[i]!)
                UserDefaults.standard.set(IntArray, forKey: "bouguprice")
            }
        case "bouguhave":
            for i in 0..<8 {
                IntArray.append(bouguhave[i]!)
                UserDefaults.standard.set(IntArray, forKey: "bouguhave")
            }

        default:
            print("nodicname")
        }
        return IntArray
        
    }
        
    func saveItem() {
        let list = MakeIntArray(dicname: "itemhave")
        UserDefaults.standard.set(list, forKey: "itemhave")
    }
}

