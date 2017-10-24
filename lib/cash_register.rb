class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item
    @title = title
    @price = price
    @total += 1
  end




end
