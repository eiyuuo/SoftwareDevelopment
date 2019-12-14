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
    
    //StatusAddClassのインスタンス化
    let statusadd = StatusAdd()
    let status = Status()
    
    
    
    var TouchEXP: Bool = true //EXPの消費切り替え用変数
    var JudgeEXP: Int = 0

    
    
    //現在ステの表示label
    @IBOutlet weak var HPpoint: UILabel!
    @IBOutlet weak var MPpoint: UILabel!
    @IBOutlet weak var ATKpoint: UILabel!
    @IBOutlet weak var DEFpoint: UILabel!
    @IBOutlet weak var INTpoint: UILabel!
    @IBOutlet weak var EXPpoint: UILabel!
    
    //各ステータスに対応したボタン
    @IBOutlet weak var HPButton: UIButton!
    @IBOutlet weak var MPButton: UIButton!
    @IBOutlet weak var ATKButton: UIButton!
    @IBOutlet weak var DEFButton: UIButton!
    @IBOutlet weak var INTButton: UIButton!
    @IBOutlet weak var ChangeEXP: UIButton!
    @IBOutlet weak var Save: UIButton!
    
    
    //ステ振りボタン(ステータス追加)-------------------------------------------------------
    
    
    
    //TouchEXPの反転
    @IBAction func TouchEXPpoint(_ sender: Any) {
        TouchEXP.toggle()
        if TouchEXP == false {
            ChangeEXP.setTitle("EXP -10", for: .normal)
        }else{
            ChangeEXP.setTitle("EXP -1", for: .normal)
        }
    }
    
    
    //HPいにステータス割り振り
    @IBAction func AddHP(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費-1の場合
            if 0 < status.EXP {
                statusadd.AddHP()
                statusadd.MinusEXP()
                
                let hp:Int? = Int(HPpoint.text!)

                let sum:Int? = hp! + 2

                HPpoint.text = String(sum!)
                
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 1
            }
        }else{
            //EXP消費-10の場合
            if 10 <= status.EXP {
            statusadd.AddTenHP()
            statusadd.MinusTenEXP()
            
            let hp:Int? = Int(HPpoint.text!)

            let sum:Int? = hp! + 20

            HPpoint.text = String(sum!)
            
            
            let exp:Int? = Int(EXPpoint.text!)

            let sum1:Int? = exp! - 10

            EXPpoint.text = String(sum1!)
            
            status.EXP -= 10
            }
        }
    }
    
    @IBAction func AddMP(_ sender: Any) {
        if TouchEXP == true {
            if 0 < status.EXP {
                statusadd.AddMP()
                statusadd.MinusEXP()
                
                let mp:Int? = Int(MPpoint.text!)

                let sum:Int? = mp! + 1

                MPpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 1
            }
        }else{
            if 10 <= status.EXP {
                statusadd.AddTenMP()
                statusadd.MinusTenEXP()
                
                let mp:Int? = Int(MPpoint.text!)

                let sum:Int? = mp! + 10

                MPpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 10
            }
        }
        
    }
    
    @IBAction func AddATK(_ sender: Any) {
        if TouchEXP == true {
            if 0 < status.EXP {
                statusadd.AddATK()
                statusadd.MinusEXP()
                
                let atk:Int? = Int(ATKpoint.text!)

                let sum:Int? = atk! + 1

                ATKpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 1
            }
        }else{
            if 10 <= status.EXP {
                statusadd.AddTenATK()
                statusadd.MinusTenEXP()
                
                let atk:Int? = Int(ATKpoint.text!)

                let sum:Int? = atk! + 10

                ATKpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 10
            }
        }
        
    }
    
    @IBAction func AddDEF(_ sender: Any) {
        if TouchEXP == true {
            if 0 < status.EXP {
                statusadd.AddDEF()
                statusadd.MinusEXP()
                
                let def:Int? = Int(DEFpoint.text!)

                let sum:Int? = def! + 1

                DEFpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 1
            }
        }else{
            if 10 <= status.EXP {
                statusadd.AddTenDEF()
                statusadd.MinusTenEXP()
                
                let def:Int? = Int(DEFpoint.text!)

                let sum:Int? = def! + 10

                DEFpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 10
            }
        }
        
    }
    
    @IBAction func AddINT(_ sender: Any) {
        if TouchEXP == true {
            if 0 < status.EXP {
                statusadd.AddINT()
                statusadd.MinusEXP()
                
                let int:Int? = Int(INTpoint.text!)

                let sum:Int? = int! + 1

                INTpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 1
            }
        }else{
            if 10 <= status.EXP {
                statusadd.AddTenINT()
                statusadd.MinusTenEXP()
                
                let int:Int? = Int(INTpoint.text!)

                let sum:Int? = int! + 10

                INTpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                status.EXP -= 10
            }
        }
        
    }
    
    //-------------------------------------------------------------------------
    
    
    
    
    //メイン画面へ戻る
    @IBAction func ReturnMain(_ sender: Any) {
        
    }
    
    
    //ステータスの保存
    @IBAction func SaveStatus(_ sender: Any) {
        statusadd.SaveStatus()
    }
    
    
    
    //画面起動時初期処理
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelに各ステータスの数字が連携
        HPpoint.text = status.getHPs()
        MPpoint.text = status.getMPs()
        ATKpoint.text = status.getATKs()
        DEFpoint.text = status.getDEFs()
        INTpoint.text = status.getINTs()
        EXPpoint.text = status.getEXPs()
        
        JudgeEXP = status.getEXP()
        
        
        //各ボタンの装飾
        HPButton.layer.borderWidth = 1
        HPButton.layer.borderColor = UIColor.white.cgColor
        HPButton.layer.cornerRadius = 10.0
        
        MPButton.layer.borderWidth = 1
        MPButton.layer.borderColor = UIColor.white.cgColor
        MPButton.layer.cornerRadius = 10.0
        
        ATKButton.layer.borderWidth = 1
        ATKButton.layer.borderColor = UIColor.white.cgColor
        ATKButton.layer.cornerRadius = 10.0
        
        DEFButton.layer.borderWidth = 1
        DEFButton.layer.borderColor = UIColor.white.cgColor
        DEFButton.layer.cornerRadius = 10.0
        
        INTButton.layer.borderWidth = 1
        INTButton.layer.borderColor = UIColor.white.cgColor
        INTButton.layer.cornerRadius = 10.0
        
        ChangeEXP.layer.borderWidth = 1
        ChangeEXP.layer.borderColor = UIColor.white.cgColor
        ChangeEXP.layer.cornerRadius = 10.0
        
        Save.layer.borderWidth = 1
        Save.layer.borderColor = UIColor.white.cgColor
        Save.layer.cornerRadius = 10.0
        
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
