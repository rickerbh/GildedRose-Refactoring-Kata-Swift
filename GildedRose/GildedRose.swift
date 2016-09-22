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
      itemBehaviour.processExpiredItem(items[i])
    }
  }
}
