class ProductsController < ApplicationController
  def index
    last_cart = Cart.all.last
    time_elapsed = Time.now - (last_cart.created_at - 25200)
    if time_elapsed > 100000
      @cart = Cart.create
    else
      @cart = last_cart
    end

  end


  def create
    last_cart = Cart.all.last
    time_elapsed = Time.now - (last_cart.created_at - 25200)
    if time_elapsed > 100000
      @cart = Cart.create
    else
      @cart = last_cart
    end
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Added the product!"
    else
      render 'new'
    end
  end

  def new
    last_cart = Cart.all.last
    time_elapsed = Time.now - (last_cart.created_at - 25200)
    if time_elapsed > 100000
      @cart = Cart.create
    else
      @cart = last_cart
    end
    @product = Product.new
  end

  def edit
    last_cart = Cart.all.last
    time_elapsed = Time.now - (last_cart.created_at - 25200)
    if time_elapsed > 100000
      @cart = Cart.create
    else
      @cart = last_cart
    end
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
      if @product.update_attributes(product_params)
        redirect_to products_path
      else 
       render 'edit'
     end
   end

  def show
    @product = Product.find(params[:id])
    @item = Item.new
    last_cart = Cart.all.last
    time_elapsed = Time.now - (last_cart.created_at - 25200)
    if time_elapsed > 100000
      @cart = Cart.create
    else
      @cart = last_cart
    end  
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to("/products")
  end

private

  def product_params
    params.require(:product).permit(:name, :price, :description, :category_id, :picture, :cart_id)
  end
end
