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
    let userDefaults = UserDefaults.standard
    var count:Int = 0
    
    //labelset関数を1秒ごとに行う処理を行っている
    func labeltimer(){
        labelTimer = Timer.scheduledTimer(timeInterval:1,target:self,selector:#selector(self.labelset),userInfo: nil,repeats:true)

    }
    
    //labelを更新するための処理
    @objc func labelset(){
        minutelabel.text = timer.getStrMinute()
        secondlabel.text = timer.getStrSecond()
    }
    
    @IBAction func doragon(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController

        next.enemyName = "doragon"

        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func slime(_ sender:Any){
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "slime"
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func kaihe(_ sender:Any){
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "kaihe"
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func magickFish(_ sender:Any){
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "magickFish"
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func umiUsagi(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "UmiUsagi"
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func gostShip(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "GostShip"
        self.present(next, animated: true, completion: nil)
    }
    
    
    @IBAction func golem(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "Golem"
        self.present(next, animated: true, completion: nil)
    }
    
    
    @IBAction func Status(_ sender: Any) {
//        let scene = SceneManagement()
//        scene.sceneTransition(corrent: self,sb: "PlayerStatus",wi: "Status")
        let storyboard = UIStoryboard(name: "PlayerStatus", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"Status") as! StatusViewController
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func Shop(_ sender: Any) {
        let storyboard = UIStoryboard(name: "shop", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"shop") as! ShopViewController
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
