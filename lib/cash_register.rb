class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    percentage = self.discount.to_f / self.total.to_f * 100.0
    self.total = self.total - percentage
  end




end
