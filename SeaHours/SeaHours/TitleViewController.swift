//
//  TitleViewController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2020/02/10.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class TitleViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    @IBOutlet weak var waku: UILabel!
    
    @IBAction func Easy(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Field", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"field") as! FieldViewController
        next.count = 180
        self.present(next, animated: true, completion: nil)
        
        UserDefaults.standard.set(1, forKey:"difficulty")
    }
    
    @IBAction func Nomal(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Field", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"field") as! FieldViewController
        next.count = 180
        self.present(next, animated: true, completion: nil)
        
        UserDefaults.standard.set(10, forKey:"difficulty")
    }
    
    @IBAction func Hard(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Field", bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:"field") as! FieldViewController
        next.count = 180
        self.present(next, animated: true, completion: nil)
        
        UserDefaults.standard.set(30, forKey:"difficulty")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        waku.layer.borderWidth = 2
        waku.layer.borderColor = UIColor.black.cgColor
        waku.layer.cornerRadius = 10.0
    }
}
