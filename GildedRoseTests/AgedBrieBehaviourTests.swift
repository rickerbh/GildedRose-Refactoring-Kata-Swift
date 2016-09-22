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
    let brie = Item(name: "Aged Brie", sellIn: 10, quality: 0)
    let behaviour = AgedBrieBehaviour()
    behaviour.updateQualityPreDateChange(brie)
    XCTAssertEqual(1, brie.quality)
  }

}
