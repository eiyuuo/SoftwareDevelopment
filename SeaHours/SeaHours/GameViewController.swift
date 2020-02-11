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

class GameViewController: UIViewController {
    
    
    @IBAction func VS(_ sender: Any) {
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "magickFish"
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
    }
}
