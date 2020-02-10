//
//  Extention.swift
//  tableview
//
//  Created by 榮門　祐斗 on 2019/12/19.
//  Copyright © 2019 yuto. All rights reserved.
//

import Foundation
import UIKit

extension UserDefaults {
    /**
     * UserDefaultsに辞書型を格納する配列を設定できる様に拡張
     *
     * @param targetArray Array<[String: Any]> 設定する辞書を格納した配列を渡す
     * @param key String Userdefaultsのキーを渡す
     */
    func setArray(_ targetArray: Array<[String: Any]>, _ key: String) {
        set(targetArray, forKey: key)//keyはアイテムネーム
    }
    
    /**
     * UserDefaultsから辞書型を格納した配列を取得できる様に拡張
     *
     * @param key String Userdefaultsのキーを渡す
     * @return Array<[String: Any]>? 対象のキーに辞書型を格納した配列がある場合には、その配列を返す。
     * ない場合には、nilを返す。
     */
    func getArray(_ key: String) -> Array<[String: String]>? {
        guard let areas = object(forKey: key) as? Array<[String: String]> else { return nil }
        return areas
    }
}

extension CALayer {
    func setBoderUIColor(_ color: UIColor){
        self.borderColor = color.cgColor
    }
}
