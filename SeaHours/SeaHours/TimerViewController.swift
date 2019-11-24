//
//  TimerViewController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/11/23.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    //ユーザーが指定した時間(仮) 分
    let userTimer:Int = 1
    var count = 0

    var timeLabel:UILabel!
    var secondLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        //ラベルを適当に用意しておく
        //時間
        timeLabel = UILabel()
        timeLabel.frame = CGRect(x:15,y:8,width:30,height:50)
        timeLabel.font = UIFont.systemFont(ofSize: 22)
        timeLabel.textAlignment = .center
        view.addSubview(timeLabel)

        //秒
        secondLabel = UILabel()
        secondLabel.frame = CGRect(x:42,y:43,width:30,height:10)
        secondLabel.font = UIFont.systemFont(ofSize: 10)
        view.addSubview(secondLabel)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //画面が表示されたらタイマーを動かす
        createTimer()
    }

    //タイマーの作成
    func createTimer(){
        count = userTimer * 60

        let timer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(self.timerAction(sender:)),
                                         userInfo: nil,
                                         repeats: true)
        timer.fire()

    }

    //タイマーの処理
    @objc func timerAction(sender:Timer){
        if count >= 60 {
            let minuteCount = count / 60

            timeLabel.text = String(minuteCount)
            secondLabel.text = "分"
        }else if count < 60{
            timeLabel.text = String(count)
            secondLabel.text = "秒"
            if count == 0{
                sender.invalidate() //止める
            }
        }
        count -= 1
    }
}
