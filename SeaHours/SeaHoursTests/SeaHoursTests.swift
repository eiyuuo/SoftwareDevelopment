//
//  SeaHoursTests.swift
//  SeaHoursTests
//
//  Created by 島袋太智 on 2019/11/21.
//  Copyright © 2019 島袋太智. All rights reserved.
//

import XCTest
@testable import SeaHours

class SeaHoursTests: XCTestCase {

    override func setUp() {
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSkill() { //スキルクラスのテスト。下のターミナル？コンソール？にprint文で文字が出ます
        let p = Skill()
        
        let MAT = 200
        let ATK = 100
        
        print(p.nomalAttack(attack: ATK))
        print(p.nomalMagickAttack(magickAttack: MAT))
    }
    
    func testEnemySkill() {
        let enemy = Enemy(maxHitPoint: 20, defense: 20, attack: 100, magickAttack: 200)
        enemy.selectSkill()
    }
    
}
