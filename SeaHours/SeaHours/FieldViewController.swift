//
//  GameViewController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/11/21.
//  Copyright © 2019 島袋太智. All rights reserved.
//
import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class FieldViewController: UIViewController {

    
    @IBOutlet weak var minutelabel: UILabel!
    @IBOutlet weak var secondlabel: UILabel!
    let timer = TimerController()
    var labelTimer:Timer!
    var count:Int = 0
    
    //labelset関数を1秒ごとに行う処理を行っている
    func labeltimer(){
        labelTimer = Timer.scheduledTimer(timeInterval:1,target:self,selector:#selector(self.labelset),userInfo: nil,repeats:true)

    }
    
    //labelを更新するための処理
    @objc func labelset(){
        minutelabel.text = timer.getStrMinute()
        secondlabel.text = timer.getStrSecond()
        if (timer.getCount() == 0) {
             self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func doragon(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController

        next.enemyName = "doragon"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func slime(_ sender:Any){
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "slime"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func kaihe(_ sender:Any){
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "kaihe"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func magickFish(_ sender:Any){
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "magickFish"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func UmiUsagi(_ sender:Any){
        EnemyCount[5]=1
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "UmiUsagi"
        self.present(next, animated: true, completion: nil)
        umiusagi.isEnabled = false
    }

    
    
    @IBAction func golem(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "Golem"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    
    @IBAction func Status(_ sender: Any) {
        let storyboard = UIStoryboard(name: "PlayerStatus", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"Status") as! StatusViewController
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func Shop(_ sender: Any) {
        let storyboard = UIStoryboard(name: "shop", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"shop") as! ShopViewController
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minutelabel.text = String("\(count/60) 分")
        secondlabel.text = String("\(count%60) 秒")
        
        timer.setCount(count: count)
        timer.createTimer()
        labeltimer()
    }
}
