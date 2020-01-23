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
