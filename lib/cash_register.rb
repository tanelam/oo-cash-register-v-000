class CashRegister
  attr_accessor :total, :discount, :title, :last_transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    if total != discount
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
    end
  end

  def items
      @item << title
  end

  def void_last_transaction
   self.total = self.last_transaction - self.total
  end

end
