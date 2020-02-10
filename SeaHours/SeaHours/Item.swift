//
//  Item.swift
//  tableview
//
//  Created by 榮門　祐斗 on 2019/12/16.
//  Copyright © 2019 yuto. All rights reserved.
//

import Foundation
import UIKit

class item {
    
    var name:[Int:String] = [0:"薬草", 1:"ポーション",2:"ハイポーション",3:"グレイトポーション",4:"魔力草",5:"魔力ポーション",6:"魔力ハイポーション",7:"魔力グレイトポーション"]
   
    var number:[Int:Int] = [0:10,1:25,2:50,3:100,4:10,5:25,6:50,7:100]
    
    var price:[Int:Int] =  [0:1,1:2,2:3,3:5,4:1,5:2,6:3,7:5]
    
    var description:[Int:String] = [0:"体力を回復する草。HPを10回復する。",1:"薬草を加工した飲み薬。HPを25回復する。",2:"ポーションを特殊な方法で加工し効果を上昇させた飲み薬。HPを50回復する。",3:"様々な方法で効果を上昇させた最高級の飲み薬。HPを100回復する。",4:"魔力が回復する薬草。SPを10回復する。",5:"魔力草を加工した飲み薬。SPを25回復する。",6:"魔力ポーションを特殊な方法で加工し効果を上昇させた飲み薬。SPを50回復する。",7:"様々な方法で効果を上昇させた最高級の飲み薬。SPを100回復する。"]
    
    var have:[Int:Int] = [0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0]
    
    func GetItemName(ID:Int) -> String {
        return name[ID, default: "無"]
    }
    
    func GetItemNumber(ID:Int) -> Int {
        return number[ID, default: 0]
    }
    
    func GetItemPrice(ID:Int) -> Int {
        return price[ID, default: 0]
    }
    
    func GetItemDescription(ID:Int) -> String {
        return description[ID, default: "無"]
    }
    
    func GetItemHave(ID:Int) -> Int {
        return have[ID, default: 0]
    }
    
    func MakeStringArray(dicname:String) -> [String] {
        
        var ItemStringArray:[String] = []
        
        switch dicname {
        case "name":
            for i in 0..<8 {
                ItemStringArray.append(name[i]!)
            }

        case "description":
            for i in 0..<8 {
                ItemStringArray.append(description[i]!)
            }

        default:
            print("nodicname")
        }
        return ItemStringArray
    }
    
    func MakeIntArray(dicname:String) -> [Int] {
        
        var ItemIntArray:[Int] = []
        
        switch dicname {
        case "number":
            for i in 0..<8 {
                ItemIntArray.append(number[i]!)
            }
            
        case "price":
            for i in 0..<8 {
                ItemIntArray.append(price[i]!)
            }
        case "have":
            for i in 0..<8 {
                ItemIntArray.append(have[i]!)
            }

        default:
            print("nodicname")
        }
        return ItemIntArray
    }
    
    func saveItem() {
//        UserDefaults.standard.set(have)
    }
    
    
}
