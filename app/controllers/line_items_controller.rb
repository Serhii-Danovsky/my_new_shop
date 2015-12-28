class LineItemsController < InheritedResources::Base

  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    if @cart.line_items.where(product_id: product).present?
      @line_item = @cart.line_items.find_by(product_id: product)
      @line_item.quantity += 1
    else
      @line_item = @cart.line_items.build(product: product)
    end
    if @line_item.save
      redirect_to cart_path, notice: 'Отличная покупка!'
    else
      redirect_to :back
    end
  end

  def destroy
    @cart = current_cart
    @cart.line_items.find(params[:id]).delete
    redirect_to :back
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :cart_id)
  end
end

