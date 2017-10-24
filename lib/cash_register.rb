class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity)
    self.total += price
    quantity = quantity.times{ |x| x * price}


  end




end
