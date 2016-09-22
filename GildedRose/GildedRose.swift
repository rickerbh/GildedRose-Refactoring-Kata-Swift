public class GildedRose {
  var items:[Item]

  required public init(items:[Item]) {
    self.items = items
  }

  public func updateQuality() {

    for i in 0..<items.count {
      let itemBehaviour = BehaviourFactory.getBehaviour(items[i])
      itemBehaviour.updateQualityPreDateChange(items[i])
      itemBehaviour.decrementSellDate(items[i])

      if items[i].sellIn < 0 {
        if items[i].name == "Aged Brie" {
          incrementQuality(items[i])
        } else {
          itemBehaviour.processExpiredItem(items[i])
        }
      }
    }
  }

  internal func incrementQuality(_ item: Item) {
    guard item.quality < 50 else {
      return
    }
    item.quality = item.quality + 1
  }

}
