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
class ShopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let itemname=iteminf.MakeStringArray(dicname: "name")
    var havearray = iteminf.MakeIntArray(dicname: "have")
    
    
    
//        ["薬草","ポーション","ハイポーション","グレイトポーション","魔力草","魔力ポーション","魔力ハイポーション","魔力グレイトポーション"]
    
    

    @IBOutlet var choice: UIButton!
    @IBOutlet var buy: UIButton!
    @IBOutlet var Description: UILabel!
    

    
    
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
        Description.text = iteminf.description[number]
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
       Description.text = iteminf.description[number]
    }
    
    @IBAction func buy(_ sender: Any) {
        //ポイント消費の処理追記一行
        havearray[number] += 1
        UserDefaults.standard.set(havearray,forKey: "have")
        print(UserDefaults.standard.array(forKey: "have") as Any)
    }
    

}


