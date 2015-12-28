class OrdersController < ApplicationController
  def index
    @orders = Order.where(cart_id: session[:cart_id])
  end

  def create
    @order = Order.new(name: params[:order][:name], phone: params[:order][:phone])

    @cart = Cart.find(session[:cart_id])
    @cart.line_items.each do |line_item|
      @order.order_items.build(title: line_item.product.title, price: line_item.product.price * line_item.quantity, quantity: line_item.quantity)
    end
    if @order.save
      @cart.line_items.destroy_all
    end

    redirect_to root_path
  end

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end
end
