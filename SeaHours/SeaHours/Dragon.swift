//
//  Dragon.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Doragon : Enemy {
    init() {
        super.init(name : "ドラゴン", maxHitPoint: 30000, defense: 1500, attack: 3000, magickAttack: 5000, exp: 10000)
    }
}
