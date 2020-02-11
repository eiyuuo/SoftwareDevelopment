//
//  SceneTransition.swift
//  SeaHours
//
//  Created by 島袋太智 on 2019/12/05.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation
import UIKit
class SceneManagement{
    
    /*
     シーン遷移を行う関数
     correntには,UIViewController class名を引数として渡す．引数は，selfを渡せば基本大丈夫．
     sbには,遷移先のstoryboardの名前を引数として渡す．
     wiには，遷移先のstoryboardのIDを引数として渡す.
     storyboardには，Storyboardをインスタンスを格納している．
     nextには,遷移先のUIviewControllerクラスをインスタンスを格納している.
     presentで画面遷移を行っている．
     */
      func sceneTransition(corrent:UIViewController,sb:String,wi:String){
        let storyboard = UIStoryboard(name: sb, bundle: nil)
        let next  = storyboard.instantiateViewController(withIdentifier:wi)
        corrent.present(next, animated: true, completion: nil)
    }
}
