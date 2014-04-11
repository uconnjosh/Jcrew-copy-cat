class ProductsController < ApplicationController
  def index
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Added the product!"
    else
      render 'new'
    end
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to("/products")
  end

private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :picture)
  end
end
