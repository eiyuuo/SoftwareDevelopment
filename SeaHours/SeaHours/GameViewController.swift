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
        next.enemyName = "teki1"//ここに敵の名前
        self.present(next, animated: true, completion: nil)
        
        let scene = SceneManagement()
        scene.sceneTransition(corrent: self,sb: "battle",wi: "VS")
    }
    
    @IBAction func Status(_ sender: Any) {
        let scene = SceneManagement()
        scene.sceneTransition(corrent: self,sb: "PlayerStatus",wi: "Status")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
