//
//  Player.swift
//  SeaHours
//
//  Created by Tomoya Gibo on 2019/12/01.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import Foundation

class Player : Character {
    private var maxMagicPoint: Int
    private var nowMagicPoint: Int
    private var item: [String] = [String]()
    
    init( maxHitPoint: Int, defense: Int, attack: Int, magickAttack: Int, maxMagicPoint: Int ) {
        self.maxMagicPoint = maxMagicPoint
        self.nowMagicPoint = self.maxMagicPoint
        
        super.init(name: "プレイヤー", maxHitPoint: maxHitPoint, defense: defense, attack: attack, magickAttack: magickAttack)
    }
    
    func getMagicPoint() -> Int {
        return nowMagicPoint
    }
    
    func magicPointOplate() -> Int {
        //MPの増減
        return 0
    }
}
