//
//  kaihei.swift
//  SeaHours
//
//  Created by 島袋太智 on 2020/01/21.
//  Copyright © 2020 島袋太智. All rights reserved.
//

import Foundation


class Kaihei : Enemy {
    init() {
        super.init(name : "カイヘイ", maxHitPoint: 300, defense: 15, attack: 30, magickAttack: 50)
    }
}
