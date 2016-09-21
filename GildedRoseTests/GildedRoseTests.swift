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
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testFoo() {
    let items = [Item(name: "foo", sellIn: 0, quality: 0)]
    let app = GildedRose(items: items);
    app.updateQuality();
    XCTAssertEqual("fixme", app.items[0].name);
  }

}
