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
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total *= (1 - (@discount.to_f / 100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction.values[0]
    @items.pop
    if @items.size = 0
  end

end
