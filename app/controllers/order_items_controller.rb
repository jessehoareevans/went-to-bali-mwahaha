class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)

    if @order.save
      respond_to do |format|
        flash[:notice] = "Task successfully added!"
        format.html
        format.js
      else
        flash[:alert] = "There was an issue placing your order"
      end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    flash[:alert] = "This product has been removed from your cart"
    respond_to do |format|
      format.html
      format.js
    end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
