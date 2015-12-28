module CartsHelper
  def total_price(items)
    number_to_currency(items.map { |i| i.quantity * i.product.price }.sum.to_f)
  end
end
