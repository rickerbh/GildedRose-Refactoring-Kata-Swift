//
//  BackstagePassBehaviourTests.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class BackstagePassBehaviourTests: XCTestCase {

  func testBacksstagePassesIncreaseQualityPreDateChange() {
    let pass = Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 5)
    let behaviour = BackstagePassBehaviour()
    behaviour.updateQualityPreDateChange(pass)
    XCTAssertEqual(6, pass.quality)
  }

  func testBackstagePassIncreases2x10DaysOut() {
    let pass = Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 5)
    let newerPass = Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 11, quality: 5)
    let behaviour = BackstagePassBehaviour()
    behaviour.updateQualityPreDateChange(pass)
    behaviour.updateQualityPreDateChange(newerPass)
    XCTAssertEqual(7, pass.quality)
    XCTAssertEqual(6, newerPass.quality)
  }

  func testBackstagePassIncreases3x5DaysOut() {
    let pass = Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 5)
    let newerPass = Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 6, quality: 5)
    let behaviour = BackstagePassBehaviour()
    behaviour.updateQualityPreDateChange(pass)
    behaviour.updateQualityPreDateChange(newerPass)
    XCTAssertEqual(8, pass.quality)
    XCTAssertEqual(7, newerPass.quality)
  }


}
