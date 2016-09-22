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
}
