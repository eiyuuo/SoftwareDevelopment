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
    
    /*
    @IBAction func bottan() {
        
    //    UserDefaults.standard.set(120,forKey: “limit”)
    //    userDefaults.synchronize()
        let scene = SceneManagement()
        scene.sceneTransition(corrent: self,sb: “battle”,wi: “battleboard”)
         */
    
    @IBAction func VS(_ sender: Any) {
//        let scene = SceneManagement()
//        scene.sceneTransition(corrent: self,sb: "battle",wi: "VS")
        let storyboard = UIStoryboard(name: "battle", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"VS") as! BattleViewController
        next.enemyName = "usagi"
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func Status(_ sender: Any) {
        let scene = SceneManagement()
        scene.sceneTransition(corrent: self,sb: "PlayerStatus",wi: "Status")
    }
    
    @IBAction func Shop(_ sender: Any) {
        let scene = SceneManagement()
        scene.sceneTransition(corrent: self,sb: "shop",wi: "shop")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
