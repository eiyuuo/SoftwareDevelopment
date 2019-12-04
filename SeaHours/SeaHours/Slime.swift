//
//  Slime.swift
//  SeaHours
//
//  Created by 東谷　歩夢 on 2019/12/04.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Slime : Enemy {
    
    init() {
        super.init(name : "スライム" ,maxHitPoint: 50, defense: 10, attack: 20, magickAttack: 30)
    }
}
