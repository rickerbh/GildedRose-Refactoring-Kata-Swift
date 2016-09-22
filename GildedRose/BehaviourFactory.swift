//
//  BehaviourFactory.swift
//  GildedRose
//
//  Created by Hamish Rickerby on 23/09/2016.
//  Copyright © 2016 Simple Machines. All rights reserved.
//

import Foundation

struct BehaviourFactory {

  static func getBehaviour(_ item: Item) -> ItemBehaviour {
    switch item.name {
    case "Aged Brie":
      return AgedBrieBehaviour()
    case "Backstage passes to a TAFKAL80ETC concert":
      return BackstagePassBehaviour()
    case "Conjured Mana Cake":
      return ConjuredBehaviour()
    case "Sulfuras, Hand of Ragnaros":
      return SulfurasBehaviour()
    default:
      return ItemBehaviour()
    }
  }
}
