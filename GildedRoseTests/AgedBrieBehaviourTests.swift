//
//  AgedBrieBehaviour.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class AgedBrieBehaviourTests: XCTestCase {

  func testItemImprovesPreDateChange() {
    let item = Item(name: "Aged Brie", sellIn: 10, quality: 0)
    let behaviour = AgedBrieBehaviour()
    behaviour.updateQualityPreDateChange(item)
    XCTAssertEqual(1, item.quality)
  }

  func testExpiredItemProcessingGivesExtraQuality() {
    let item = Item(name: "Aged Brie", sellIn: -5, quality: 10)
    let behaviour = AgedBrieBehaviour()
    behaviour.processExpiredItem(item)
    XCTAssertEqual(11, item.quality)
  }

  func testNonExpiredItemUnaffectedByProcessingExpired() {
    let item = Item(name: "Aged Brie", sellIn: 10, quality: 5)
    let behaviour = AgedBrieBehaviour()
    behaviour.processExpiredItem(item)
    XCTAssertEqual(5, item.quality)
  }

}
