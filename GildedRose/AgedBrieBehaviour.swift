//
//  AgedBrie.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import Foundation

class AgedBrieBehaviour: ItemBehaviour {

  override func updateQualityPreDateChange(_ item: Item) {
    setQuality(item, quality: item.quality + 1)
  }

  override func processExpiredItem(_ item: Item) {
    guard item.sellIn < 0 else {
      return
    }
    setQuality(item, quality: item.quality + 1)
  }

}
