class CashRegister

  attr_accessor :total, :discount, :cash_register_total, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last_transaction = { item => price }
    @items << item
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total *= (1 - (@discount.to_f / 100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

end
