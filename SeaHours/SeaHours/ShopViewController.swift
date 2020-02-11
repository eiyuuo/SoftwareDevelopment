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
var namearray = iteminf.MakeStringArray(dicname: "itemname")
var havearray = iteminf.MakeIntArray(dicname: "itemhave")
var pricearray = iteminf.MakeIntArray(dicname: "itemprice")
var shopkey = "item"
class ShopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tld: UILabel!
    @IBOutlet weak var reloadlabel: UIButton!
    @IBOutlet weak var nextlabel: UIButton!
    @IBOutlet weak var backlabel: UIButton!
    @IBOutlet weak var choicelabel: UIButton!
    @IBOutlet weak var buylabel: UIButton!
    @IBOutlet weak var ind: UILabel!
    @IBOutlet weak var shop: UILabel!
    @IBOutlet weak var Description: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ボタン装飾
        tld.layer.borderWidth = 1
        tld.layer.borderColor = UIColor.white.cgColor
        ind.layer.borderWidth = 1
        ind.layer.borderColor = UIColor.white.cgColor
        shop.layer.borderWidth = 1
        shop.layer.borderColor = UIColor.white.cgColor
        buylabel.layer.borderWidth = 1
        buylabel.layer.borderColor = UIColor.white.cgColor
        choicelabel.layer.borderWidth = 1
        choicelabel.layer.borderColor = UIColor.white.cgColor
        backlabel.layer.borderWidth = 1
        backlabel.layer.borderColor = UIColor.white.cgColor
        nextlabel.layer.borderWidth = 1
        nextlabel.layer.borderColor = UIColor.white.cgColor
        reloadlabel.layer.borderWidth = 1
        reloadlabel.layer.borderColor = UIColor.white.cgColor
        
        // 説明の表示
        switch shopkey {
        case "item":
            Description.text = iteminf.itemdescription[number]
        case "buki":
            Description.text = iteminf.bukidescription[number]
        case "bougu":
            Description.text = iteminf.bougudescription[number]
        default:
            Description.text = iteminf.itemdescription[number]
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    //↓tableviewの表示

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namearray.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.contentView.backgroundColor = UIColor.black
        cell.textLabel?.textColor = UIColor(red: 19/255, green: 144/255, blue: 250/255, alpha: 1.0)
        tableView.backgroundColor = UIColor.black
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch shopkey {
        case "item":
            namearray = iteminf.MakeStringArray(dicname: "itemname")
        case "buki":
            namearray = iteminf.MakeStringArray(dicname: "bukiname")
        case "bougu":
            namearray = iteminf.MakeStringArray(dicname: "bouguname")
        default:
            namearray = iteminf.MakeStringArray(dicname: "itemname")
        }
        cell.textLabel!.text = namearray[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 30)
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
    
    @IBAction func choice(_ sender: Any) {
        switch shopkey {
        case "item":
            Description.text = iteminf.itemdescription[number]
        case "buki":
            Description.text = iteminf.bukidescription[number]
        case "bougu":
            Description.text = iteminf.bougudescription[number]
        default:
            Description.text = iteminf.itemdescription[number]
        }
    }

    
    @IBAction func back(_ sender: Any) {
        if shopkey == "item" {
            shopkey = "bougu"
        }
        else if shopkey == "buki"{
            shopkey = "item"
        }
        else if shopkey == "bougu"{
            shopkey = "buki"
        }
        switch shopkey {
        case "item":
            namearray = iteminf.MakeStringArray(dicname: "itemname")
        case "buki":
            namearray = iteminf.MakeStringArray(dicname: "bukiname")
        case "bougu":
            namearray = iteminf.MakeStringArray(dicname: "bouguname")
        default:
            namearray = iteminf.MakeStringArray(dicname: "itemname")
        }
        namearray = iteminf.MakeStringArray(dicname: "itemname")
        print(namearray)
        print(shopkey)
    }


    @IBAction func next(_ sender: Any) {
        if shopkey == "item" {
            shopkey = "buki"
        }
        else if shopkey == "buki"{
            shopkey = "bougu"
        }
        else if shopkey == "bougu"{
            shopkey = "item"
        }
        switch shopkey {
        case "item":
            namearray = iteminf.MakeStringArray(dicname: "itemname")
        case "buki":
            namearray = iteminf.MakeStringArray(dicname: "bukiname")
        case "bougu":
            namearray = iteminf.MakeStringArray(dicname: "bouguname")
        default:
            namearray = iteminf.MakeStringArray(dicname: "itemname")
        }
        print(namearray)
        print(shopkey)
    }
    
    @IBAction func reload(_ sender: Any) {
        tableView.reloadData()
    }
}
