//
//  ViewController.swift
//  tableview
//
//  Created by 榮門　祐斗 on 2019/12/11.
//  Copyright © 2019 yuto. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

let iteminf = item()
var number = 0
let userdefaults = UserDefaults()
var exp = 0
var selectnumber = 1
class ShopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var itemname = iteminf.MakeStringArray(dicname: "itemname")
    var havearray = iteminf.MakeIntArray(dicname: "itemhave")
    var pricearray = iteminf.MakeIntArray(dicname: "itemprice")
    func setshop(page:Int) {
        switch selectnumber {
        case 1:
            itemname = iteminf.MakeStringArray(dicname: "itemname")
            havearray = iteminf.MakeIntArray(dicname: "itemhave")
            pricearray = iteminf.MakeIntArray(dicname: "itemprice")
        case 2:
            itemname = iteminf.MakeStringArray(dicname: "bukiname")
            havearray = iteminf.MakeIntArray(dicname: "bukihave")
            pricearray = iteminf.MakeIntArray(dicname: "bukiprice")
        case 3:
            itemname = iteminf.MakeStringArray(dicname: "bouguname")
            havearray = iteminf.MakeIntArray(dicname: "bouguhave")
            pricearray = iteminf.MakeIntArray(dicname: "bouguprice")
        default:
            itemname = iteminf.MakeStringArray(dicname: "itemname")
            havearray = iteminf.MakeIntArray(dicname: "itemhave")
            pricearray = iteminf.MakeIntArray(dicname: "itemprice")
        }
    }


    
    
//        ["薬草","ポーション","ハイポーション","グレイトポーション","魔力草","魔力ポーション","魔力ハイポーション","魔力グレイトポーション"]
    
    @IBOutlet var buy: UIButton!
    @IBOutlet var choice: UIButton!
    @IBOutlet var Description: UILabel!
    @IBOutlet var tableview: UITableView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ボタン装飾できん
        choice.layer.borderWidth = 1
        choice.layer.borderColor = UIColor.white.cgColor
        choice.layer.cornerRadius = 10.0
        
        buy.layer.borderWidth = 1
        buy.layer.borderColor = UIColor.white.cgColor
        buy.layer.cornerRadius = 10.0
        
        // 説明の表示
        Description.text = iteminf.itemdescription[number]
    }
    




    
    //↓tableviewの表示
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemname.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel!.text = itemname[indexPath.row]

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //セルの選択解除
        tableView.deselectRow(at: indexPath, animated: true)
        
        //ここに処理を書く
        number = indexPath.row
        print(number)
    }
    //ボタン押してからの処理
    @IBAction func choice(_ sender: Any) {
        Description.text = iteminf.itemdescription[number]
    }
    
    @IBAction func buy(_ sender: Any) {
        exp = UserDefaults.standard.integer(forKey:"EXPs")
        if exp <= pricearray[number] {
            exp = exp - pricearray[number]
            havearray[number] += 1
            UserDefaults.standard.set(exp, forKey: "EXPs")
            UserDefaults.standard.set(havearray,forKey: "have")
            print(UserDefaults.standard.array(forKey: "have") as Any)
        }
        else {
            print(UserDefaults.standard.array(forKey: "have") as Any)
        }
       
        
    }
    @IBAction func back(_ sender: Any) {
        if selectnumber == 1 {
            selectnumber = 3
        }
        else {
            selectnumber += 1
        }
        setshop(page: selectnumber)
    }
    @IBAction func next(_ sender: Any) {
        if selectnumber == 3 {
            selectnumber = 1
        }
        else {
            selectnumber -= 1
        }
        setshop(page: selectnumber)
    }
    

}


