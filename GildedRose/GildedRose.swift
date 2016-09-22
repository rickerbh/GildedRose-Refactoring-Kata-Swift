public class GildedRose {
  var items:[Item]

  required public init(items:[Item]) {
    self.items = items
  }

  public func updateQuality() {

    for i in 0..<items.count {
      if (items[i].name == "Aged Brie" ||
        items[i].name == "Backstage passes to a TAFKAL80ETC concert") {
        incrementQuality(items[i])

        if (items[i].name == "Backstage passes to a TAFKAL80ETC concert") {
          if (items[i].sellIn < 11) {
            incrementQuality(items[i])
          }

          if (items[i].sellIn < 6) {
            incrementQuality(items[i])
          }
        }
      } else {
        decrementQuality(items[i])
      }

      decrementSellDate(items[i])

      if items[i].sellIn < 0 {
        if items[i].name == "Aged Brie" {
          incrementQuality(items[i])
        } else {
          processExpiredItem(items[i])
        }
      }
    }
  }

  internal func decrementQuality(_ item: Item) {
    guard item.quality > 0 else {
      return
    }
    guard item.name != "Sulfuras, Hand of Ragnaros" else {
      return
    }
    item.quality = item.quality - 1
  }

  internal func incrementQuality(_ item: Item) {
    guard item.quality < 50 else {
      return
    }
    item.quality = item.quality + 1
  }

  internal func decrementSellDate(_ item: Item) {
    guard item.name != "Sulfuras, Hand of Ragnaros" else {
      return
    }
    item.sellIn = item.sellIn - 1
  }

  internal func processExpiredItem(_ item: Item) {
    guard item.sellIn < 0 else {
      return
    }

    if item.name == "Aged Brie" {
      incrementQuality(item)
      incrementQuality(item)
    } else if item.name == "Backstage passes to a TAFKAL80ETC concert" {
      item.quality = 0
    } else {
      decrementQuality(item)
    }
  }
  
}
