class SessionsController < ApplicationController

  def new
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

    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_path, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to products_path, notice: "Logged out!"
  end
end
