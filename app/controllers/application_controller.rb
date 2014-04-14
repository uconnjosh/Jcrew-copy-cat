class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def current_cart
    last_cart = Cart.all.last
    time_elapsed = Time.now - (last_cart.created_at - 25200)
    if time_elapsed > 100000
      @cart = Cart.create
    else
      @cart = last_cart
    end
  end
  helper_method :current_user
  helper_method :current_cart
end
