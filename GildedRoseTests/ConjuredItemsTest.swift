//
//  ConjuredItemsTest.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class ConjuredItemsTest: XCTestCase {

  func testConjuredItemsDegradeTwiceAsFastPreExpiry() {
    let item = Item(name: "Conjured Mana Cake", sellIn: 3, quality: 6)
    let behaviour = ConjuredBehaviour()
    behaviour.updateQualityPreDateChange(item)
    XCTAssertEqual(4, item.quality)
  }

  func testConjuredItemsDegradeTwiceAsFastPostExpiry() {
    let item = Item(name: "Conjured Mana Cake", sellIn: -3, quality: 6)
    let behaviour = ConjuredBehaviour()
    behaviour.processExpiredItem(item)
    XCTAssertEqual(2, item.quality)
  }

}
