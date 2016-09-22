//
//  ItemBehaviour.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class ItemBehaviourTests: XCTestCase {

  func testClampQualityInRange0To50() {
    let item = Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 6)
    let behaviour = ItemBehaviour()
    behaviour.setQuality(item, quality: 51)
    XCTAssertEqual(50, item.quality)
    behaviour.setQuality(item, quality: -1)
    XCTAssertEqual(0, item.quality)
  }

  func testItemDegradesPreDateChange() {
    let vest = Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 6)
    let behaviour = ItemBehaviour()
    behaviour.updateQualityPreDateChange(vest)
    XCTAssertEqual(5, vest.quality)
  }

  func testItemQualityDoesntDropBelow0() {
    let vest = Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 0)
    let behaviour = ItemBehaviour()
    behaviour.updateQualityPreDateChange(vest)
    XCTAssertEqual(0, vest.quality)
  }

  func testDecrementDay() {
    let item = Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20)
    let behaviour = ItemBehaviour()
    behaviour.decrementSellDate(item)
    XCTAssertEqual(9, item.sellIn)
  }

}
