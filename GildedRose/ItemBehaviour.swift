//
//  ItemBehaviour.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import Foundation

class ItemBehaviour {

  func updateQualityPreDateChange(_ item: Item) {
    setQuality(item, quality: item.quality - 1)
  }

  func setQuality(_ item: Item, quality: Int) {
    guard quality >= 0 else {
      item.quality = 0
      return
    }
    guard quality <= 50 else {
      item.quality = 50
      return
    }
    item.quality = quality
  }

}
