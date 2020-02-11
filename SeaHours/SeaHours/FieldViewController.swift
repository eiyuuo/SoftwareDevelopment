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
    @IBOutlet weak var slime: UIButton!
    @IBOutlet weak var kaihei: UIButton!
    @IBOutlet weak var magicFish: UIButton!
    @IBOutlet weak var golem: UIButton!
    @IBOutlet weak var umiusagi: UIButton!
    @IBOutlet weak var gostship: UIButton!


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
    var EnemyCount :[Int]=[0,0,0,0,0,0,0]

    @IBAction func doragon(_ sender: Any) {
        var x = 0
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController

        next.enemyName = "doragon"

        for i in EnemyCount{
            x = x+i
        }
        if (x==6) {
            self.present(next, animated: true, completion: nil)
        }

        next.count = timer.getCount()


    }

    @IBAction func slime(_ sender:Any){
        EnemyCount[0]=1
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "slime"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
        slime.isEnabled = false
    }

    @IBAction func kaihe(_ sender:Any){
        EnemyCount[1]=1
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "kaihe"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
        kaihei.isEnabled = false
    }

    @IBAction func magickFish(_ sender:Any){
        EnemyCount[2]=1
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "magickFish"
        next.count = timer.getCount()
        self.present(next, animated: true, completion: nil)
        magicFish.isEnabled = false

    }

    @IBAction func Golem(_ sender:Any){
        EnemyCount[3]=1
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "Golem"
        self.present(next, animated: true, completion: nil)
        golem.isEnabled = false
    }

    @IBAction func GostShip(_ sender:Any){
        EnemyCount[4]=1
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "GostShip"
        self.present(next, animated: true, completion: nil)
        gostship.isEnabled = false
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
        self.present(next, animated: true, completion: nil)
    }


    @IBAction func Status(_ sender: Any) {
//        let scene = SceneManagement()
//        scene.sceneTransition(corrent: self,sb: "PlayerStatus",wi: "Status")
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
