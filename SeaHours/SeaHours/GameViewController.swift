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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func bottan() {
//        UserDefaults.standard.set(120,forKey: "limit")
//        userDefaults.synchronize()
        let scene = SceneManagement()
        scene.sceneTransition(corrent: self,sb: "battle",wi: "battleboard")
        
    }
}
