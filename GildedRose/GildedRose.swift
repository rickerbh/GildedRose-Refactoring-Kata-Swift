public class GildedRose {
  var items:[Item]

  required public init(items:[Item]) {
    self.items = items
  }

  public func updateQuality() {
    let _ = items.map { item in
      let itemBehaviour = BehaviourFactory.getBehaviour(item)
      itemBehaviour.updateQualityPreDateChange(item)
      itemBehaviour.decrementSellDate(item)
      itemBehaviour.processExpiredItem(item)
    }
  }
}
