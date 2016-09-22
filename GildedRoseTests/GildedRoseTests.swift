//
//  GildedRoseTests.swift
//  GildedRoseTests
//
//  Created by Hamish Rickerby on 21/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import XCTest

class GildedRoseTests: XCTestCase {

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testThirtyDaySales() {
    let location = "/Users/rickerbh/Documents/Development/Apprenticeship/GildedRose/GildedRoseTests/"
    let fileName = "out.gm"
    let fileContents = try! String(contentsOfFile: location + fileName, encoding: String.Encoding.utf8)
    let expectedValue = fileContents.components(separatedBy: CharacterSet.newlines)

    let items = [
      Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20), //
      Item(name: "Aged Brie", sellIn: 2, quality: 0), //
      Item(name: "Elixir of the Mongoosname: e", sellIn: 5, quality: 7), //
      Item(name: "SulfursellIn: as,quality:  Hand of Ragnaros", sellIn: 0, quality: 80), //
      Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80),
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 15, quality: 20),
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 49),
      Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 49),
      // this conjured item does not work properly yet
      Item(name: "Conjured Mana Cake", sellIn: 3, quality: 6)]

    let app = GildedRose(items: items);
    let days = 30

    var runContent = [String]()

    for i in 0..<days {
      runContent.append("-------- day \(i) --------")
      runContent.append("name, sellIn, quality")
      for item in items {
        runContent.append(item.description)
      }
      runContent.append("")
      app.updateQuality()
    }

    XCTAssertEqual(expectedValue, runContent)
  }

  func testSellDateDecrements() {
    let vest = Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20)
    let app = GildedRose(items: [])
    app.decrementSellDate(vest)
    XCTAssertEqual(9, vest.sellIn)
  }

  func testSulfurasSellDateNeverDecrements() {
    let sulfuras = Item(name: "Sulfuras, Hand of Ragnaros", sellIn: -1, quality: 80)
    let app = GildedRose(items: [])
    app.decrementSellDate(sulfuras)
    XCTAssertEqual(-1, sulfuras.sellIn)
  }
}
