//
//  TimerController.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/11/23.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation
import UIKit

class TimerController:UIViewController{
    var time = Timer()
    let timelimit:Int = 10
    var count:Int = 0
    var minuteCount:Int = 0
    
    func startTime(){
        time = Timer.scheduledTimer(timeInterval:1.0,target:self,selector:#selector(self.timerCounte),userInfo:nil,repeats:true);
    }
    
    @objc func timerCounte(){
        if count >= 60 {
            minuteCount = count / 60

     
            }
        else if count < 60{
            if count == 0{
                
            }
            
        }
            count -= 1
        
    }
    
}

