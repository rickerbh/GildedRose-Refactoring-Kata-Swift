
public class GildedRose {
    var items:[Item]
    
    required public init(items:[Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        
        for i in 0..<items.count {
          if (items[i].name != "Aged Brie" && items[i].name != "Backstage passes to a TAFKAL80ETC concert") {
              decrementQuality(items[i])
            } else {
                if (items[i].quality < 50) {
                  incrementQuality(items[i])

                    if (items[i].name == "Backstage passes to a TAFKAL80ETC concert") {
                        if (items[i].sellIn < 11) {
                          incrementQuality(items[i])
                        }
                        
                        if (items[i].sellIn < 6) {
                          incrementQuality(items[i])
                        }
                    }
                }
            }

          decrementSellDate(items[i])

            if (items[i].sellIn < 0) {
                if (items[i].name != "Aged Brie") {
                    if (items[i].name != "Backstage passes to a TAFKAL80ETC concert") {
                      decrementQuality(items[i])
                    } else {
                        items[i].quality = items[i].quality - items[i].quality
                    }
                } else {
                  incrementQuality(items[i])
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

}
