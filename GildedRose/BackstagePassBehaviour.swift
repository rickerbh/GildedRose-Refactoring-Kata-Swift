//
//  BackstagePassBehaviour.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import Foundation

class BackstagePassBehaviour: ItemBehaviour {

  override func updateQualityPreDateChange(_ item: Item) {
    let qualityIncrease: Int
    switch item.sellIn {
    case 0..<6:
      qualityIncrease = 3
    case 6..<11:
      qualityIncrease = 2
    default:
      qualityIncrease = 1
    }
    setQuality(item, quality: item.quality + qualityIncrease)
  }

  override func processExpiredItem(_ item: Item) {
    guard item.sellIn < 0 else {
      return
    }
    setQuality(item, quality: 0)
  }

}
