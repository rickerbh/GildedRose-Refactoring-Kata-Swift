//
//  BehaviourFactoryTests.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class BehaviourFactoryTests: XCTestCase {

  func testBrieGetsAgedBrieBehaviour() {
    let item = Item(name: "Aged Brie", sellIn: 10, quality: 0)
    let behaviour = BehaviourFactory.getBehaviour(item)
    XCTAssertTrue(behaviour is AgedBrieBehaviour)
  }

  func testBackstagePassGetsBackstagePassBehaviour() {
    let item = Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 5)
    let behaviour = BehaviourFactory.getBehaviour(item)
    XCTAssertTrue(behaviour is BackstagePassBehaviour)
  }

  func testOtherGetsStandardBehaviour() {
    let item = Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 0)
    let behaviour = BehaviourFactory.getBehaviour(item)
    XCTAssertTrue(behaviour is ItemBehaviour)
  }
}
