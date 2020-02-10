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
    
    private let skillDict = Skill().getSkillPointDict()
    private var nowChoseSkillName : String = ""
    var enemyName : String = ""
    private var battle : Battle!
    
    //仮
    private let choseFlag:[String:Int] = ["skill": 0 ,"item": 1 ]
    private var nowChose:String = "skill"
    private let skillList:[[[String]]] = [
                            [["通常攻撃","渾身の一撃", "スラント", "クロー" ],
                             ["テールアタック" , "噛みつく" , "体当たり" , "エアスラッシュ" ],
                             [ "クロスブレイブ","アッパーブレイド", "ドライブフェンサー" , "アークバイト" ] ,
                             ["アストラルクロス" , "ツヴァイセイバー", "シャインセイバー" , "ドラグテイル" ],
                             [ "リヴァイクロー" , "ファイア" , "ウィンド" , "アイス" ] ,
                             ["ストーン" , "ショット", "ファイアアロウ" , "ウィンドカッター" ],
                             ["アイスランス" , "ストーンエッジ" , "イフリート" , "テンペスト" ] ,
                             [ "ブリザード"  , "アースクエイク" , "ナイトメア" , "ヒール" ],
                             [ "ハイヒール" , "グレイヒール","",""]],
                            //アイテム
                             [["AAA","BBB","CCC","DDD"],
                              ["aaa","bbb","ccc","ddd"]]
                            ]
    private var pageFlag:Int = 0
    
    //音関係
    private var audioAttack: AVAudioPlayer!
    private var audioMagick: AVAudioPlayer!
    private var audioBGM : AVAudioPlayer!
    private var audioKaihuku : AVAudioPlayer!
    
    //背景系
    @IBOutlet weak var skillBackGround: UIImageView!
    @IBOutlet weak var teki: UIImageView!
    @IBOutlet weak var corer: UILabel!
    
    //ラベル系
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var logFlame: UILabel!
    @IBOutlet weak var log: UILabel!
    @IBOutlet weak var skillCaption: UILabel!
    @IBOutlet weak var gameOver: UILabel!
    @IBOutlet weak var pageNum: UILabel!
    
    //ボタン系
    @IBOutlet weak var button1 : UIButton!
    @IBOutlet weak var button2 : UIButton!
    @IBOutlet weak var button3 : UIButton!
    @IBOutlet weak var button4 : UIButton!
    @IBOutlet weak var yes : UIButton!
    @IBOutlet weak var no : UIButton!
    @IBOutlet weak var item: UIButton!
    @IBOutlet weak var skill: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var backHome: UIButton!
    
    //スキルの使用ボタンについて
    @IBAction func yes(_ sender: Any) {
        //ボタン消す→プレイヤーのターン→敵のターンの順番で記述
        makeSkillButton(skillName: nowChoseSkillName , boolType: true)
        
        battle.battlePlayerTurn(nowChose: nowChose, tuchButtonName: nowChoseSkillName)
        playerAnimation()
        
        //上のアニメーション終了してますかの判定後に下を実行したい
        //battle.battleEnemyTurn()
        //enemyAnimation()
    }
    
    @IBAction func backHome(_ sender: Any) {
        let exp = battle.status.getEXP() + battle.enemy.getExp()
        UserDefaults.standard.set(exp, forKey:"EXPs")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func no(_ sender: Any) {
        buttonIsHide(skillName: nowChoseSkillName , boolType: true)
        makeSkillButton(skillName : nowChoseSkillName , boolType : true)
    }
    
    @IBAction func next(_ sender: Any) {
        if pageFlag != skillList[choseFlag[nowChose]!].count-1 {
            pageFlag+=1
        } else{
            pageFlag=0
        }
        button1.setTitle(skillList[choseFlag[nowChose]!][pageFlag][0], for: .normal)
        button2.setTitle(skillList[choseFlag[nowChose]!][pageFlag][1], for: .normal)
        button3.setTitle(skillList[choseFlag[nowChose]!][pageFlag][2], for: .normal)
        button4.setTitle(skillList[choseFlag[nowChose]!][pageFlag][3], for: .normal)
        pageNum.text = String(pageFlag+1) + "/" + String(skillList[choseFlag[nowChose]!].count)
    }
    

    @IBAction func back(_ sender: Any) {
        if pageFlag != 0 {
            pageFlag-=1
        } else{
            pageFlag=skillList[choseFlag[nowChose]!].count-1
        }
        button1.setTitle(skillList[choseFlag[nowChose]!][pageFlag][0], for: .normal)
        button2.setTitle(skillList[choseFlag[nowChose]!][pageFlag][1], for: .normal)
        button3.setTitle(skillList[choseFlag[nowChose]!][pageFlag][2], for: .normal)
        button4.setTitle(skillList[choseFlag[nowChose]!][pageFlag][3], for: .normal)
        pageNum.text = String(pageFlag+1) + "/" + String(skillList[choseFlag[nowChose]!].count)
    }
    
    @IBAction func skillFlagButton(_ sender: Any) {
        pageFlag=0
        nowChose="skill"
        button1.setTitle(skillList[choseFlag[nowChose]!][pageFlag][0], for: .normal)
        button2.setTitle(skillList[choseFlag[nowChose]!][pageFlag][1], for: .normal)
        button3.setTitle(skillList[choseFlag[nowChose]!][pageFlag][2], for: .normal)
        button4.setTitle(skillList[choseFlag[nowChose]!][pageFlag][3], for: .normal)
        pageNum.text = String(pageFlag+1) + "/" + String(skillList[choseFlag[nowChose]!].count)
    }
    
    @IBAction func itemFlagButton(_ sender: Any) {
        pageFlag=0
        nowChose="item"
        button1.setTitle(skillList[choseFlag[nowChose]!][pageFlag][0], for: .normal)
        button2.setTitle(skillList[choseFlag[nowChose]!][pageFlag][1], for: .normal)
        button3.setTitle(skillList[choseFlag[nowChose]!][pageFlag][2], for: .normal)
        button4.setTitle(skillList[choseFlag[nowChose]!][pageFlag][3], for: .normal)
        pageNum.text = String(pageFlag+1) + "/" + String(skillList[choseFlag[nowChose]!].count)
    }
    
    
    //スキルのボタンについて
    @IBAction func button1(_ sender: Any) {
        buttonIsHide(skillName: skillList[choseFlag[nowChose]!][pageFlag][0],boolType: false )
        makeSkillButton(skillName : nowChoseSkillName , boolType : false)
    }

    @IBAction func button2(_ sender: Any) {
        buttonIsHide(skillName: skillList[choseFlag[nowChose]!][pageFlag][1],boolType: false )
        makeSkillButton(skillName : nowChoseSkillName , boolType : false)
    }

    @IBAction func button3(_ sender: Any) {
        buttonIsHide(skillName: skillList[choseFlag[nowChose]!][pageFlag][2],boolType: false )
        makeSkillButton(skillName : nowChoseSkillName , boolType : false)
    }

    @IBAction func button4(_ sender: Any) {
        buttonIsHide(skillName: skillList[choseFlag[nowChose]!][pageFlag][3],boolType: false )
        makeSkillButton(skillName : nowChoseSkillName , boolType : false)
    }

    //ーーーーーーーーーーーーーーーーー↓インスタンスみたいの↓ーーーーーーーーーーーーーーーーーー
    override func viewDidLoad() {
        super.viewDidLoad()
        
        battle = Battle(enemyName: enemyName)
        setSound(MP3Name: "punch-high1" , audioName: audioAttack)
        setSound(MP3Name: "game_explosion7", audioName: audioMagick)
        setSound(MP3Name: "kaihuku", audioName: audioKaihuku)
        setSound(MP3Name: "fruitsparfait", audioName: audioBGM)
        //audioBGM.play()
        pageNum.text = String(pageFlag+1) + "/" + String(skillList[choseFlag[nowChose]!].count)
        label1.text =  "HP：" + String(battle.player.getHitPoint()) + "\n" + "SP：" + String(battle.player.getSkillPoint())
        makeLabelLine(label: label1)
        makeLabelLine(label: log)
        makeLabelLine(label: label2)
        button1.setTitle(skillList[choseFlag[nowChose]!][pageFlag][0], for: .normal)
        button2.setTitle(skillList[choseFlag[nowChose]!][pageFlag][1], for: .normal)
        button3.setTitle(skillList[choseFlag[nowChose]!][pageFlag][2], for: .normal)
        button4.setTitle(skillList[choseFlag[nowChose]!][pageFlag][3], for: .normal)
        backHome.isHidden = true
        let image = UIImage(named: enemyName)
        teki.image = image
    }
    //ーーーーーーーーーーーーーーーーー↑インスタンスみたいの↑ーーーーーーーーーーーーーーーーーー
    
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
    
    //ログ生成
    func makeLog() {
        log.text = battle.getLogList()
        label1.text =  "HP：" + String(battle.player.getHitPoint()) + "\n" + "SP：" + String(battle.player.getSkillPoint())
    }
    
    //プレイヤーのアニメーション
    func playerAnimation() {
        if !battle.player.getIsDead() { //プレイヤーが生存時?
            //ここでnowChoseSkillでswith文？でアニメーション変化？流石にやりたくないです...
            if (self.nowChoseSkillName != "ヒール" && self.nowChoseSkillName != "ハイヒール" && self.nowChoseSkillName != "グレイヒール"){
                print(self.nowChoseSkillName)
                UIView.animate(withDuration: 0.1, delay: 0.0, animations: {
                    self.teki.alpha = 0.0
                }) { _ in
                    self.teki.alpha = 1.0
                    UIView.animate(withDuration: 0.1, delay: 0.0, animations: {
                        self.teki.alpha = 0.0
                    }) { _ in
                        self.teki.alpha = 1.0
                    }
                    //効果音位置
                    self.makeLog()
                    self.soundEffect(skillName: self.nowChoseSkillName)

                    //正確な動きになるが，場所はダメゼッタイ！！
                    self.battle.battleEnemyTurn()
                    self.enemyAnimation()
                }
            } else { //ヒール系のアニメーション
                self.corer.backgroundColor = UIColor.green
                UIView.animate(withDuration: 0.2, delay: 0.0, animations: {
                    self.corer.alpha = 0.8
                }) { _ in
                    self.corer.alpha = 0.0
                    
                    //効果音位置
                    self.makeLog()
                    self.soundEffect(skillName: self.nowChoseSkillName)
                    
                    //正確な動きになるが，場所はダメゼッタイ！！
                    self.battle.battleEnemyTurn()
                    self.enemyAnimation()
                }
            }
        }else { //敵に負けたとき
            UIView.animate(withDuration: 0.5, delay: 0.0, animations: {
                self.corer.alpha = 0.6
                self.gameOver.isHidden = false
                self.buttonIsHide(skillName : self.nowChoseSkillName , boolType : false)//取り敢えずゲームクリア時にボタンを押せないように
                //ここにボタン表示追加。ホームの戻るボタン＋どれだけのexpを獲得したか
                self.dismiss(animated: true, completion: nil)
            })

        }
    }

    //敵のアニメーション
    func enemyAnimation() {
        if  !battle.enemy.getIsDead() { //敵が生存時?
            //ここでbattle.enemy.getSkillName()でswith文？でアニメーション変化？流石にやりたくないです...
            UIView.animate(withDuration: 0.2, delay: 1.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 50.0, options: .autoreverse, animations: {
                self.corer.backgroundColor = UIColor.red
                self.teki.center.y += 100.0
                self.teki.bounds.size.height += 30.0
                self.teki.bounds.size.width += 30.0
            }) { _ in
                self.teki.center.y -= 100.0
                self.teki.bounds.size.height -= 30.0
                self.teki.bounds.size.width -= 30.0
            }
            
            UIView.animate(withDuration: 0.2, delay: 1.2, animations: {
                self.corer.alpha = 0.8
            }) { _ in
                self.corer.alpha = 0.0
                UIView.animate(withDuration: 0.2, delay: 0.0, animations: {
                    self.corer.alpha = 0.8
                }) { _ in
                    self.corer.alpha = 0.0
                }
                //効果音位置
                self.makeLog()
                self.soundEffect(skillName: self.battle.enemy.getChooseSkillName())
                
                self.buttonIsHide(skillName : self.nowChoseSkillName , boolType : true)
                if self.battle.player.getIsDead() {//プレイヤーが倒れたか
                    UIView.animate(withDuration: 0.5, delay: 1.5, animations: {
                        self.gameOver.isHidden = false
                        self.buttonIsHide(skillName : self.nowChoseSkillName , boolType : false)//取り敢えず戦闘不能時にボタンを押せないように
                    })
                }
            }
        }else { //敵を倒したとき
            UIView.animate(withDuration: 0.5, delay: 0.0, animations: {
                self.teki.isHidden = true
                self.makeSkillButton(skillName: "game clear" , boolType: false)
            })
        }
    }
    
    //ラベルの外枠追加
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
    func buttonIsHide(skillName : String , boolType : Bool){
        nowChoseSkillName = skillName
        if (skillName != "" ){
            button2.isEnabled = boolType
            button1.isEnabled = boolType
            button3.isEnabled = boolType
            button4.isEnabled = boolType
            pageNum.isEnabled = boolType
            skill.isEnabled = boolType
            item.isEnabled = boolType
            Next.isEnabled = boolType
            Back.isEnabled = boolType
            label1.isEnabled = boolType
            label2.isEnabled = boolType
            logFlame.isEnabled = boolType
            log.isEnabled = boolType
        }
    }
    
    func makeSkillButton(skillName : String , boolType : Bool) {
        if(skillName == "game clear"){
            backHome.isHidden = boolType
            skillBackGround.isHidden = boolType
            skillCaption.text="獲得expは" + String(self.battle.enemy.getExp()) + "です。"
            skillCaption.isHidden = boolType
        }else if (skillName == "game ver"){
            //いる？
        }
        else if (skillName != "" ){
            yes.isHidden = boolType
            if (skillDict[skillName]! <= battle.player.getSkillPoint()){
                yes.isEnabled = true
            } else {
                yes.isEnabled = false
            }
            
            no.isHidden = boolType
            skillBackGround.isHidden = boolType
            skillCaption.text =  skillName + "の消費SPは" +
                String(battle.player.skill.getSkillPoint(keyName: nowChoseSkillName))
                + "です。" + String()
            skillCaption.isHidden = boolType
        }
    }

    /*上詰のコードログが見えなくなった...
    func setupLabelFrame(labelName : UILabel!) {
        var fixedFrame = labelName.frame
        labelName.sizeToFit()
        fixedFrame.size.height = labelName.frame.size.height
        labelName.frame = fixedFrame
    }
     */
    
    //音の再生について
    func playAudio(audioName : AVAudioPlayer!) {
       /* if(audioName.isPlaying) {
            //音が再生中の場合は停止する。
            //audioName.stop()
            audioName.currentTime = 0
            //audioName.play()
        } else {
            //音が停止中の場合は再生する。
            //audioName.play()
        }
         */
    }
    
    func soundEffect(skillName : String) {
        if (skillName == "通常攻撃" || skillName == "渾身の一撃" ) {
            playAudio(audioName: audioAttack)
        } else if (skillName == "ヒール" || skillName == "ハイヒール" || skillName == "グレイヒール"){
            playAudio(audioName: audioKaihuku)
        } else {
            playAudio(audioName: audioMagick)
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
                
            case audioKaihuku :
                audioKaihuku = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioKaihuku.delegate = self
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

