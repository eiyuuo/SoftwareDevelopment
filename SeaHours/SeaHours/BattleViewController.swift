//
//  BattleViewController.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class BattleViewController: UIViewController {
    
    private var audioAttack: AVAudioPlayer!
    private var audioMagick: AVAudioPlayer!
    private var audioBGM :AVAudioPlayer!

    private let battle = Battle(enemyName: "dragon1")
    private var nowChoseSkillName : String = ""
    
    //背景系
    @IBOutlet weak var skillBackGround: UIImageView!
    @IBOutlet weak var teki: UIImageView!
    
    //ラベル系
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var logFlame: UILabel!
    @IBOutlet weak var log: UILabel!
    @IBOutlet weak var skillCaption: UILabel!
    
    //ボタン系
    @IBOutlet weak var strongAttack : UIButton!
    @IBOutlet weak var nomalAttack : UIButton!
    @IBOutlet weak var strongMagick : UIButton!
    @IBOutlet weak var nomalMagick : UIButton!
    @IBOutlet weak var yes : UIButton!
    @IBOutlet weak var no : UIButton!
    
    
    //スキルの使用ボタンについて
    @IBAction func yes(_ sender: Any) {
        //戻り値で後半コードを吹っ飛ばす?
        battle.battle(tuchButtonName: nowChoseSkillName)
        makeLog()
        if (nowChoseSkillName == "strongAttack" || nowChoseSkillName == "nomalAttack" ) {
            playAudio(audioName: audioAttack)
        } else{
            playAudio(audioName: audioMagick)
        }
        buttonIsHide(skillName: "" , boolType: true , skillPoint: 0)
        
        playerAnimation()
        enemyAnimation()

    }
    
    @IBAction func no(_ sender: Any) {
        buttonIsHide(skillName: "" , boolType: true, skillPoint: 0)
    }
    
    //スキルのボタンについて
    @IBAction func strongAttack(_ sender: Any) {
        buttonIsHide(skillName: "strongAttack",boolType: false , skillPoint: 10)
    }
    
    @IBAction func strongMagick(_ sender: Any) {
        buttonIsHide(skillName: "strongMagickAttack",boolType: false , skillPoint: 50)
    }
    
    @IBAction func nomalAttack(_ sender: Any) {
        buttonIsHide(skillName: "nomalAttack",boolType: false , skillPoint: 0)
    }
    
    @IBAction func nomalMagick(_ sender: Any) {
        buttonIsHide(skillName: "nomalMagickAttack",boolType: false , skillPoint: 100)
    }
    
    
    override func viewDidLoad() { //インスタンスみたいな感じに初めに呼び出されるやつ
        super.viewDidLoad()
        
        setSound(MP3Name: "punch-high1" , audioName: audioAttack)
        setSound(MP3Name: "game_explosion7", audioName: audioMagick)
        setSound(MP3Name: "fruitsparfait", audioName: audioBGM)
        audioBGM.play()
        label1.text =  "HP：" + String(battle.player.getHitPoint()) + "\n" + "SP：" + String(battle.player.getSkillPoint())
        makeLabelLine(label: label1)
        makeLabelLine(label: log)
        makeLabelLine(label: label2)
        skillCaption.isHidden = true
        skillBackGround.isHidden = true
        yes.isHidden = true
        no.isHidden = true
        
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
    
    //↓追加コード
    
    func makeLog() {
        log.text = battle.getLogList()
        label1.text =  "HP：" + String(battle.player.getHitPoint()) + "\n" + "SP：" + String(battle.player.getSkillPoint())
    }
    
    func playerAnimation() {
        UIView.animate(withDuration: 0.1, delay: 0.0, animations: {
            self.teki.alpha = 0.0
        }) { _ in
            self.teki.alpha = 1.0
            UIView.animate(withDuration: 0.1, delay: 0.0, animations: {
                self.teki.alpha = 0.0
            }) { _ in
                self.teki.alpha = 1.0
            }
        }
    }
    
    func enemyAnimation() {
        UIView.animate(withDuration: 0.2, delay: 1.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 50.0, options: .autoreverse, animations: {
            self.teki.center.y += 100.0
            self.teki.bounds.size.height += 30.0
            self.teki.bounds.size.width += 30.0
        }) { _ in
            self.teki.center.y -= 100.0
            self.teki.bounds.size.height -= 30.0
            self.teki.bounds.size.width -= 30.0
        }
    }
    
    func makeLabelLine(label : UILabel!) {
        //　ラベル枠の枠線太さと色
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.borderWidth = 2
        
        // ラベル枠を丸くする
        label.layer.masksToBounds = true
        // ラベル丸枠の半径
        label.layer.cornerRadius = 10
    }
    
    //ボタンを消すなど
    func buttonIsHide(skillName : String , boolType : Bool, skillPoint : Int){
        strongAttack.isEnabled = boolType
        nomalAttack.isEnabled = boolType
        strongMagick.isEnabled = boolType
        nomalMagick.isEnabled = boolType
        
        yes.isHidden = boolType
        if (skillPoint < battle.player.getSkillPoint() ){
            yes.isEnabled = true
        } else {
            yes.isEnabled = false
        }
        
        no.isHidden = boolType
        skillBackGround.isHidden = boolType
        skillCaption.isHidden = boolType
        
        nowChoseSkillName = skillName
    }

    /*上詰のコードログが見えなくなった...
    func setupLabelFrame(labelName : UILabel!) {
        var fixedFrame = labelName.frame
        labelName.sizeToFit()
        fixedFrame.size.height = labelName.frame.size.height
        labelName.frame = fixedFrame
    }
     */
    
    func playAudio(audioName : AVAudioPlayer!) {
        if(audioName.isPlaying) {
            //音が再生中の場合は停止する。
            audioName.stop()
            audioName.currentTime = 0
            audioName.play()
        } else {
            //音が停止中の場合は再生する。
            audioName.play()
        }
    }
    
}

extension BattleViewController: AVAudioPlayerDelegate {
    func setSound(MP3Name: String, audioName : AVAudioPlayer!) {
        guard let path = Bundle.main.path(forResource: MP3Name, ofType: "mp3") else {
            print("音源ファイルが見つかりません")
            return
        }

        do {
            // AVAudioPlayerのインスタンス化
            switch audioName { //audioを直接指定しないとエラーを吐かれるため，現在for文使用不可
            case audioAttack:
                audioAttack = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioAttack.delegate = self
                break
                
            case audioMagick:
                audioMagick = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioMagick.delegate = self
                break
                
            case audioBGM:
                audioBGM = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioBGM.delegate = self
                break
                
            default:
                break
            }
        } catch {
        }
    }
}

