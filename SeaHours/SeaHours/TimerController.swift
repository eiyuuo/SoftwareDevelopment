//
//  TimerController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/11/28.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation
import UIKit

class TimerViewController :UIViewController{
    let timeLimit:Int = 3
    var count :Int = 0
    var time:Timer!
    var minuteCount:Int = 0
    var secondCount:Int = 0


    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           //画面が表示されたらタイマーを動かす
           createTimer()
       }
    
    //タイマーの作成をする
    func createTimer(){
        count  = timeLimit*60
        time = Timer.scheduledTimer(timeInterval:1,target:self,selector:Selector(("timerCount")),userInfo: nil,repeats:true)
        
    }
    
    
    //タイマーの計算を行ってテキストとして表示する
    @objc  func timerCount(){
        
        //if文でcount/60が59以上か判断してtrueだったらcount/60をして分表示を行っている．
        if count / 60 <= 59  {
            //ここに分のテキストを表示するのを書く
            minuteCount = count / 60
            minuteLabel.text = String("\(minuteCount) 分")
            
        }
        
        //if文で何秒か判定して秒表示を行っている．．
        if count % timeLimit  <= 60{
            //ここに秒のテキストを表示するのを書く
            secondCount = count % 60
            secondLabel.text = String("\(secondCount) 秒")
            if count == 0{
                time.invalidate()
            }
        }
        count  -= 1
        
    }
}

