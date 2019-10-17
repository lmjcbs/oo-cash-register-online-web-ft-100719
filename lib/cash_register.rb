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
    @total = @total * (@discount / 100).to_f if @discount > 0
    @total
  end

end
