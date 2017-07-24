class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
      respond_to do |format|
      format.html { redirect_to product_path }
      format.js
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/', flash[:notice] => "Product was added successfully"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to '/', flash[:notice] => "Product was successfully updated"
    else
      render '/'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to '/', :notice => 'Product was successfully deleted'
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
