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
    
    //Classのインスタンス化
    let statusadd = StatusAdd()
    let status = Status()
    let userDefaults = UserDefaults.standard
    
    
    
    var TouchEXP: Bool = true //EXPの消費切り替え用変数
    var JudgeEXP: Int! //経験値判定
    
    
    
    var HPi: Int!
    var SPi: Int!
    var ATKi: Int!
    var DEFi: Int!
    var INTi: Int!
    
    
    
    //現在ステの表示label
    @IBOutlet weak var HPpoint: UILabel!
    @IBOutlet weak var SPpoint: UILabel!
    @IBOutlet weak var ATKpoint: UILabel!
    @IBOutlet weak var DEFpoint: UILabel!
    @IBOutlet weak var INTpoint: UILabel!
    @IBOutlet weak var EXPpoint: UILabel!
    
    //各ステータスプラス
    @IBOutlet weak var HPButton: UIButton!
    @IBOutlet weak var SPButton: UIButton!
    @IBOutlet weak var ATKButton: UIButton!
    @IBOutlet weak var DEFButton: UIButton!
    @IBOutlet weak var INTButton: UIButton!
    @IBOutlet weak var ChangeEXP: UIButton!
    
    //各ステータスマイナス
    @IBOutlet weak var HPminus: UIButton!
    @IBOutlet weak var SPminus: UIButton!
    @IBOutlet weak var ATKminus: UIButton!
    @IBOutlet weak var DEFminus: UIButton!
    @IBOutlet weak var INTminus: UIButton!
    
    //ステータス保存ボタン
    @IBOutlet weak var Save: UIButton!
    
    
    //ステ振りボタン(ステータス追加)-------------------------------------------------------
    
    
    
    //TouchEXPの反転処理
    @IBAction func TouchEXPpoint(_ sender: Any) {
        TouchEXP.toggle()
        if TouchEXP == false {
            ChangeEXP.setTitle("EXP ±10", for: .normal)
        }else{
            ChangeEXP.setTitle("EXP ±1", for: .normal)
        }
    }
    
    
    //HPへのステータス割り振り
    @IBAction func AddHP(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費-1の場合
            if 0 < JudgeEXP {
                statusadd.AddHP()
                statusadd.MinusEXP()
                
                let hp:Int? = Int(HPpoint.text!)

                let sum:Int? = hp! + 2

                HPpoint.text = String(sum!)
                
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 1
                HPi += 2
            }
        }else{
            //EXP消費-10の場合
            if 10 <= JudgeEXP {
            statusadd.AddTenHP()
            statusadd.MinusTenEXP()
            
            let hp:Int? = Int(HPpoint.text!)

            let sum:Int? = hp! + 20

            HPpoint.text = String(sum!)
            
            
            let exp:Int? = Int(EXPpoint.text!)

            let sum1:Int? = exp! - 10

            EXPpoint.text = String(sum1!)
            
            JudgeEXP -= 10
            HPi += 20
            }
        }
    }
    
    //SPへのステータス割り振り
    @IBAction func AddSP(_ sender: Any) {
        ////EXP消費-1の場合
        if TouchEXP == true {
            if 0 < JudgeEXP {
                statusadd.AddSP()
                statusadd.MinusEXP()
                
                let mp:Int? = Int(SPpoint.text!)

                let sum:Int? = mp! + 1

                SPpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 1
                SPi += 1
            }
        }else{
            //EXP消費-10の場合
            if 10 <= JudgeEXP {
                statusadd.AddTenSP()
                statusadd.MinusTenEXP()
                
                let mp:Int? = Int(SPpoint.text!)

                let sum:Int? = mp! + 10

                SPpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 10
                SPi += 10
            }
        }
    }
    
    //ATKへのステータス割り振り
    @IBAction func AddATK(_ sender: Any) {
        //EXP消費-1の場合
        if TouchEXP == true {
            if 0 < JudgeEXP {
                statusadd.AddATK()
                statusadd.MinusEXP()
                
                let atk:Int? = Int(ATKpoint.text!)

                let sum:Int? = atk! + 1

                ATKpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 1
                ATKi += 1
            }
        }else{
            //EXP消費-10の場合
            if 10 <= JudgeEXP {
                statusadd.AddTenATK()
                statusadd.MinusTenEXP()
                
                let atk:Int? = Int(ATKpoint.text!)

                let sum:Int? = atk! + 10

                ATKpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 10
                ATKi += 10
            }
        }
        
    }
    
    //DEFへのステータス割り振り
    @IBAction func AddDEF(_ sender: Any) {
        //EXP消費-1の場合
        if TouchEXP == true {
            if 0 < JudgeEXP {
                statusadd.AddDEF()
                statusadd.MinusEXP()
                
                let def:Int? = Int(DEFpoint.text!)

                let sum:Int? = def! + 1

                DEFpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 1
                DEFi += 1
            }
        }else{
            //EXP消費-10の場合
            if 10 <= JudgeEXP {
                statusadd.AddTenDEF()
                statusadd.MinusTenEXP()
                
                let def:Int? = Int(DEFpoint.text!)

                let sum:Int? = def! + 10

                DEFpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 10
                DEFi += 10
            }
        }
        
    }
    
    //INTへのステータス割り振り
    @IBAction func AddINT(_ sender: Any) {
        //EXP消費-1の場合
        if TouchEXP == true {
            if 0 < JudgeEXP {
                statusadd.AddINT()
                statusadd.MinusEXP()
                
                let int:Int? = Int(INTpoint.text!)

                let sum:Int? = int! + 1

                INTpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 1

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 1
                INTi += 1
            }
        }else{
            //EXP消費-10の場合
            if 10 <= JudgeEXP {
                statusadd.AddTenINT()
                statusadd.MinusTenEXP()
                
                let int:Int? = Int(INTpoint.text!)

                let sum:Int? = int! + 10

                INTpoint.text = String(sum!)
                
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! - 10

                EXPpoint.text = String(sum1!)
                
                JudgeEXP -= 10
                INTi += 10
            }
        }
        
    }
    
    
    //HPへのステータス減少
    @IBAction func MinusHP(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費+1の場合
            if 2 < HPi {
                statusadd.MinusHP()
                statusadd.AddEXP()
                       
                let hp:Int? = Int(HPpoint.text!)

                let sum:Int? = hp! - 2

                HPpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 1

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 1
                HPi -= 2
                
            }
        }else{
            //EXP消費-10の場合
            if 20 < HPi {
                statusadd.MinusTenHP()
                statusadd.AddTenEXP()
                
                let hp:Int? = Int(HPpoint.text!)

                let sum:Int? = hp! - 20

                HPpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 10

                EXPpoint.text = String(sum1!)
                    
                JudgeEXP += 10
                HPi -= 20
            }
        }
    }
    
    //SPへのステータス減少
    @IBAction func MinusSP(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費+1の場合
            if 1 < SPi {
                statusadd.MinusSP()
                statusadd.AddEXP()
                       
                let sp:Int? = Int(SPpoint.text!)

                let sum:Int? = sp! - 1

                SPpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 1

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 1
                SPi -= 1
                
            }
        }else{
                //EXP消費-10の場合
            if 10 < SPi {
                statusadd.MinusTenSP()
                statusadd.AddTenEXP()
                
                let sp:Int? = Int(SPpoint.text!)

                let sum:Int? = sp! - 10

                SPpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 10

                EXPpoint.text = String(sum1!)
                    
                JudgeEXP += 10
                SPi -= 10
            }
        }
    }
    
    //ATKへのステータス減少
    @IBAction func MinusATK(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費+1の場合
            if 1 < ATKi {
                statusadd.MinusATK()
                statusadd.AddEXP()
                       
                let atk:Int? = Int(ATKpoint.text!)

                let sum:Int? = atk! - 1

                ATKpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 1

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 1
                ATKi -= 1
                
            }
        }else{
            //EXP消費-10の場合
            if 10 < ATKi {
                statusadd.MinusTenATK()
                statusadd.AddTenEXP()
                       
                let atk:Int? = Int(ATKpoint.text!)

                let sum:Int? = atk! - 10

                ATKpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 10

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 10
                ATKi -= 10
                
            }
        }
    }
    
    //DEFへのステータス減少
    @IBAction func MinusDEF(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費+1の場合
            if 1 < DEFi {
                statusadd.MinusDEF()
                statusadd.AddEXP()
                       
                let def:Int? = Int(DEFpoint.text!)

                let sum:Int? = def! - 1

                DEFpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 1

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 1
                DEFi -= 1
                
            }
        }else{
            //EXP消費-10の場合
            if 10 < DEFi {
                statusadd.MinusTenDEF()
                statusadd.AddTenEXP()
                       
                let def:Int? = Int(DEFpoint.text!)

                let sum:Int? = def! - 10

                DEFpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 10

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 10
                DEFi -= 10
                
            }
        }
    }
    
    //INTへのステータス現象
    @IBAction func MinusINT(_ sender: Any) {
        if TouchEXP == true {
            //EXP消費+1の場合
            if 1 < INTi {
                statusadd.MinusINT()
                statusadd.AddEXP()
                       
                let int:Int? = Int(INTpoint.text!)

                let sum:Int? = int! - 1

                INTpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 1

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 1
                INTi -= 1
                
            }
        }else{
            //EXP消費-10の場合
            if 10 < INTi {
                statusadd.MinusTenINT()
                statusadd.AddTenEXP()
                       
                let int:Int? = Int(INTpoint.text!)

                let sum:Int? = int! - 10

                INTpoint.text = String(sum!)
                       
                       
                let exp:Int? = Int(EXPpoint.text!)

                let sum1:Int? = exp! + 10

                EXPpoint.text = String(sum1!)
                       
                JudgeEXP += 10
                INTi -= 10
                
            }
        }
    }
    
    
    
    
    //-------------------------------------------------------------------------
    
    
    
    
    //ステータスの保存
    @IBAction func SaveStatus(_ sender: Any) {
        statusadd.SaveStatus()
    }
    
    
    
    
    //メイン画面へ戻る
    @IBAction func ReturnMain(_ sender: Any) {
        
    }
    
    
    
    //画面起動時初期処理
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //labelに各ステータスの数字が連携
        HPpoint.text = status.getHPs()
        SPpoint.text = status.getSPs()
        ATKpoint.text = status.getATKs()
        DEFpoint.text = status.getDEFs()
        INTpoint.text = status.getINTs()
        EXPpoint.text = status.getEXPs()
        
        
        
        //各ステータス値をgetし変数へ格納
        HPi = status.getHP()
        SPi = status.getSP()
        ATKi = status.getATK()
        DEFi = status.getDEF()
        INTi = status.getINT()
        JudgeEXP = status.getEXP()
        
        
        
        //各ボタンの装飾(プラス)
        HPButton.layer.borderWidth = 1
        HPButton.layer.borderColor = UIColor.white.cgColor
        HPButton.layer.cornerRadius = 10.0
        
        SPButton.layer.borderWidth = 1
        SPButton.layer.borderColor = UIColor.white.cgColor
        SPButton.layer.cornerRadius = 10.0
        
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
        
        
        //各ボタンの装飾(マイナス)
        HPminus.layer.borderWidth = 1
        HPminus.layer.borderColor = UIColor.white.cgColor
        HPminus.layer.cornerRadius = 10.0
        
        SPminus.layer.borderWidth = 1
        SPminus.layer.borderColor = UIColor.white.cgColor
        SPminus.layer.cornerRadius = 10.0
        
        ATKminus.layer.borderWidth = 1
        ATKminus.layer.borderColor = UIColor.white.cgColor
        ATKminus.layer.cornerRadius = 10.0
        
        DEFminus.layer.borderWidth = 1
        DEFminus.layer.borderColor = UIColor.white.cgColor
        DEFminus.layer.cornerRadius = 10.0
        
        INTminus.layer.borderWidth = 1
        INTminus.layer.borderColor = UIColor.white.cgColor
        INTminus.layer.cornerRadius = 10.0
        
        
        //保存ボタンの装飾
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
