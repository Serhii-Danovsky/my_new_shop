class CartsController < InheritedResources::Base

  def show
    @cart = Cart.find(session[:cart_id])
    @line_items = @cart.line_items
  end
end

