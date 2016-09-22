//
//  SulfurasBehaviourTests.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class SulfurasBehaviourTests: XCTestCase {
  func testSulfurasQualityNeverChanges() {
    let item = Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 15, quality: 80)
    let behaviour = SulfurasBehaviour()
    behaviour.updateQualityPreDateChange(item)
    XCTAssertEqual(80, item.quality)
  }
}
