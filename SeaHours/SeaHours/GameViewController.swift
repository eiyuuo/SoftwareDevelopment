//
//  GameViewController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/11/21.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    private let battle = Battle(enemyName: "slime")

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var log: UILabel!

    @IBAction func button1(_ sender: Any) {
        battle.battle(tuchBottunName: "attack")

        let a = "aaa"
        
        
        log.text = battle.getLogList()
        label1.text = a
        label2.text = "hellow1"
    }

    @IBAction func button2(_ sender: Any) {
        label1.text = "hello, world2"
        label2.text = "aa"
    }
}
