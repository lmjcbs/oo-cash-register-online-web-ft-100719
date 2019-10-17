class CashRegister

  attr_accessor :total, :discount, :cash_register_total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last_transaction = { item => price }
  end

  def apply_discount
    puts @total
    puts @discount
    @total *= (1 - (@discount.to_f / 100.0)) if @discount > 0
    puts @total
    "After the discount, the total comes to $#{@total.to_i}"
  end

end
