class CartsController < ApplicationController
   def index
   end
 def create
    @cart = Cart.create
  end

  def new
    @cart = Cart.new
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.delete
    redirect_to("/products")
  end

private

  # def cart_params
  #   params.require(:product).permit(:name, :price, :description, :category_id, :picture)
  # end
end

