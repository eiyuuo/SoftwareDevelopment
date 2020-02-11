//
//  TimerController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/11/28.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation
import UIKit

class TimerController {
    var count :Int = 180
    var time:Timer!
    var minuteCount:Int = 0
    var secondCount:Int = 0
    var strMinute:String = ""
    var strSecond:String = ""
    
    //getterとsetter
    func getCount() -> Int {
        return self.count
    }
    
    func setCount(count:Int) {
        self.count = count
    }
    
    func getStrMinute() -> String {
        return self.strMinute
    }
    
    func setStrMinute(strMinute:String) {
        self.strMinute = strMinute
    }

    func getStrSecond() -> String {
        return self.strSecond
    }
    
    func setStrSecond(strSecond:String) {
        self.strSecond = strSecond
    }
    
    //タイマーの作成をする
    func createTimer() {
        //1秒ごとにtimerCount()関数を行う処理
        time = Timer.scheduledTimer(timeInterval:1,target:self,selector:#selector(self.timerCount),userInfo: nil,repeats:true)
    }
    
    
    
    //タイマーの計算を行ってテキストとして表示する
    @objc func timerCount() {
        
        //if文でcount/60が59以上か判断してtrueだったらcount/60をして分表示を行っている．
        //ここに分のテキストを表示するのを書く
        minuteCount = getCount() / 60
        setStrMinute(strMinute:String("\(minuteCount) 分"))
        
        
        //秒数を表示する．if は0秒になったらタイマーが終了する処理．
        secondCount = getCount() % 60
        setStrSecond(strSecond:String("\(secondCount) 秒"))
        if getCount() == 0 {
            time.invalidate()
            print("終わり")
        }
        setCount(count:count-1)
        print(getStrMinute()+getStrSecond())
    }
}
