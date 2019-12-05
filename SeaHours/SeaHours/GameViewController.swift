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

class GameViewController: UIViewController {
    
    private let battle = Battle(enemyName: "dragon1")

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var log: UILabel!

    @IBAction func button1(_ sender: Any) {
        battle.battle(tuchBottunName: "attack")
        
        log.text = battle.getLogList()
        label1.text =  "HP：" + String(battle.player.getHitPoint()) + "\n" + "MP：" + String(battle.player.getMagicPoint())
        
    }

    @IBAction func button2(_ sender: Any) {
        battle.battle(tuchBottunName: "magick")
        
        log.text = battle.getLogList()
        label1.text =  "HP：" + String(battle.player.getHitPoint()) + "\n" + "MP：" + String(battle.player.getMagicPoint())
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
 */
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
